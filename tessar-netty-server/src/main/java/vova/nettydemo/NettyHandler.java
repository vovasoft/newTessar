package vova.nettydemo;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.oracle.tools.packager.Log;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.redis.core.RedisTemplate;
import redis.clients.jedis.Jedis;
import vova.dao.dbmongo.UseMyMongo;
import vova.dao.dbsql.EnumSQL;
import vova.dao.dbsql.UseMySql;
import vova.dao.manager.ManageGameInput;
import vova.dao.manager.ManagePayInput;
import vova.domain.Player;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.*;

import com.alibaba.fastjson.JSONArray;
import io.netty.util.CharsetUtil;
import vova.domain.channel.ChannelIndex;
import vova.domain.payment.PayReceive;

import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static io.netty.buffer.Unpooled.copiedBuffer;
import static io.netty.handler.codec.http.HttpHeaderValues.KEEP_ALIVE;
import static io.netty.handler.codec.http.HttpHeaders.Names.CONTENT_LENGTH;
import static io.netty.handler.codec.http.HttpHeaders.Names.CONTENT_TYPE;
import static io.netty.handler.codec.http.HttpResponseStatus.OK;
import static io.netty.handler.codec.http.HttpVersion.HTTP_1_1;
import static io.netty.handler.codec.rtsp.RtspHeaders.Names.CONNECTION;


/**
 * @author vova
 * @version Create in 上午12:24 2017/12/21
 */

public class NettyHandler extends SimpleChannelInboundHandler<FullHttpRequest> {
    StringBuilder sb = new StringBuilder();
    JSONArray jsonarray = new JSONArray();
    public static ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mongodb.xml");
    public static ExecutorService pool = Executors.newFixedThreadPool(200);

    public JSONObject getJsonObj(String name, String value) {
        JSONObject jsonobj = new JSONObject();
        jsonobj.put(name, value);
        return jsonobj;
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
    }

//    @Autowired
//    private ManageGameInput manageGameInput;

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, FullHttpRequest msg) throws Exception {
        //函数执行次数？
        //解析get请求参数
        
        FullHttpResponse response = new DefaultFullHttpResponse(HTTP_1_1, OK); // 响应
        UseMyMongo umm = (UseMyMongo) ac.getBean("useMyMongo");
        UseMySql mys = (UseMySql) ac.getBean("useMySql");

        try {
            
            if (!(msg instanceof FullHttpRequest)) {
                return;
            }
            String uri = msg.uri();
            response.headers().set(CONTENT_TYPE, "text/html; charset=UTF-8");
            if (uri.length()<20 || !(uri.substring(0, 21)).equals("/tessar/statis/statis")) {
                //System.out.println("return error url");
                response.setStatus(HttpResponseStatus.NO_CONTENT);
                ResponseString(ctx,response,"接口都没拼对，骚年，加油吧！！！！！！");
                return;
            }

            Gson gson = new Gson();
            QueryStringDecoder decoder = new QueryStringDecoder(msg.uri());
            Map<String, List<String>> parame = decoder.parameters();
            List<String> flag = parame.get("action");
            String json = parame.get("json").toString();
            
            if (flag==null){
                ResponseString(ctx, response, "action is none");
            } else if (flag.get(0).equals("game")) {
                ManageGameInput manageGameInput= (ManageGameInput) ac.getBean("manageGameInput");
                List<Player> players = gson.fromJson(json, new TypeToken<List<Player>>(){}.getType());
                for (Player player : players) {
                    ChannelIndex c = new ChannelIndex();
                    c.setCid(player.getCid());
                    ChannelIndex res  = (ChannelIndex) mys.utilSQL(ChannelIndex.class, EnumSQL.SELECT,c);
                    if (res!=null){
                        String mainId = res.getMainId();
                        
                        Thread thread1 = new ManageGameInput(player,umm,mys,mainId);  //多线程
                        pool.execute(thread1);
//                        thread1.start();
//                        manageGameInput.HandPlayerData(player,umm,mys,mainId);
                        Player player2 = new Player(player.getUid(),player.getRegdate(),
                                player.getLastdate(),mainId,player.getGid(),player.getSid(),player.getEnter());
                        Thread thread2 = new ManageGameInput(player2,umm,mys,mainId);
                        pool.execute(thread2);
//                        thread2.start();
//                        manageGameInput.HandPlayerData(player,umm,mys,mainId);
                    }else{
                        response.setStatus(HttpResponseStatus.NO_CONTENT);
                        ResponseString(ctx, response, "error");
                        return;
                    }
                }
                response.setStatus(HttpResponseStatus.OK);
                ResponseString(ctx, response, "OK");
            } else if (flag.get(0).equals("pay")) {
                //支付情况

                ManagePayInput mpi= (ManagePayInput) ac.getBean("managePayInput");
                List<PayReceive> payReceiveList = gson.fromJson(json, new TypeToken<List<PayReceive>>(){}.getType());

                for (PayReceive payReceive : payReceiveList) {
                    ChannelIndex c = new ChannelIndex();
                    Player player = new Player();
                    player.setUid(payReceive.getUid());
                    player.setGid(payReceive.getGid());
                    player.setSid(payReceive.getSid());
                    Player res = umm.findOnePlayer(player,mys);
                    if(res == null){
                        response.setStatus(HttpResponseStatus.NO_CONTENT);
                        //ResponseString(ctx, response, "player is not exist");
                    }else{
                        String cid = res.getCid();
                        c.setCid(cid);
                        ChannelIndex resIndex = (ChannelIndex) mys.utilSQL(ChannelIndex.class,EnumSQL.SELECT,c);
                        if (resIndex!=null){
                            String mainId = resIndex.getMainId();
                            String enter = res.getEnter();
//                            mpi.HandPayData(payReceive,umm,mys,cid,mainId,enter);
//                            mpi.HandPayData(payReceive,umm,mys,mainId,mainId,enter);
                            Thread thread1 = new ManagePayInput(payReceive,umm,mys,cid,mainId,enter);  //多线程
                            pool.execute(thread1);

                            Thread thread2 = new ManagePayInput(payReceive,umm,mys,mainId,mainId,enter);  //多线程
                            pool.execute(thread2);
                            response.setStatus(HttpResponseStatus.OK);

                        }else{
                            response.setStatus(HttpResponseStatus.NO_CONTENT);
                        }
                    }
                }
                ResponseString(ctx, response, "Done");
                
            }
        }catch (Exception e){
            e.printStackTrace();
       //     FullHttpResponse response = new DefaultFullHttpResponse(HTTP_1_1, OK); // 响应
            response.headers().set(CONTENT_TYPE, "text/html; charset=UTF-8");
            response.setStatus(HttpResponseStatus.NO_CONTENT);
            ResponseString(ctx, response, "出错了，大哥，麻烦检查一下是不是参数不对");
        } finally {
            Thread.interrupted();
        }


    }


    //获取请求的内容
    private String parseJosnRequest(FullHttpRequest request) {
        ByteBuf jsonBuf = request.content();
        String jsonStr = jsonBuf.toString(CharsetUtil.UTF_8);
        return jsonStr;
    }

    private void ResponseJson(ChannelHandlerContext ctx, FullHttpRequest request, String jsonStr) {
        // TODO Auto-generated method stub
        boolean keepAlive = HttpUtil.isKeepAlive(request);
        byte[] jsonByteByte = jsonStr.getBytes();
        FullHttpResponse response = new DefaultFullHttpResponse(HTTP_1_1, OK, Unpooled.wrappedBuffer(jsonByteByte));
        response.headers().set(CONTENT_TYPE, "text/json");
        response.headers().setInt(CONTENT_LENGTH, response.content().readableBytes());

        if (keepAlive) {
            response.headers().set(CONNECTION, KEEP_ALIVE);
        }
        ctx.writeAndFlush(response);
    }

    private void ResponseString(ChannelHandlerContext ctx,FullHttpResponse response, String Str) {
        response.headers().set(CONTENT_TYPE, "text/html; charset=UTF-8");
        ByteBuf bb = Unpooled.copiedBuffer(Str.getBytes());
        response.content().writeBytes(bb);
        bb.release();
        ctx.writeAndFlush(response).addListener(ChannelFutureListener.CLOSE);
    }

}

