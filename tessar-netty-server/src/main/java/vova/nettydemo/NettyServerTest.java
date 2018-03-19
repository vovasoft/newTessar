package vova.nettydemo;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.ServerChannel;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.codec.http.HttpObjectAggregator;
import vova.domain.newadd.CheckMem;
import io.netty.handler.codec.http.HttpRequestDecoder;
import io.netty.handler.codec.http.HttpResponseEncoder;
import io.netty.handler.stream.ChunkedWriteHandler;
import org.springframework.beans.factory.annotation.Autowired;
import vova.dao.manager.ManagePayInput;
import java.net.Inet4Address;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @author vova
 * @version Create in 上午12:24 2017/12/21
 */

public class    NettyServerTest {
    private static final org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger(ManagePayInput.class);
  //  private static final int SERVER_PORT = 9999;
    private static final String DEFAULT_URL = "/";

    public void start(final String ip,int SERVER_PORT) throws Exception
    {
        EventLoopGroup bossGroup = new NioEventLoopGroup();
        EventLoopGroup workerGroup = new NioEventLoopGroup();
        try
        {
            ServerBootstrap b = new ServerBootstrap();
//            b.group(bossGroup, workerGroup).channel((Class<? extends ServerChannel>) NioSocketChannel.class)
            b.group(bossGroup, workerGroup).channel(NioServerSocketChannel.class)
                    .childHandler(new ChannelInitializer<SocketChannel>()
                    {
                        @Override
                        protected void initChannel(SocketChannel ch) throws Exception
                        {
                            ch.pipeline().addLast("http-decoder", new HttpRequestDecoder());
                            ch.pipeline().addLast("http-encoder", new HttpResponseEncoder());
                            ch.pipeline().addLast("http-aggregator", new HttpObjectAggregator(65536));
                            ch.pipeline().addLast("http-chunked", new ChunkedWriteHandler());
                            ch.pipeline().addLast("HttpServerHandler", new NettyHandler());
                        }
                    });
            ChannelFuture future = b.bind(SERVER_PORT).sync();
            System.out.println("HTTP server start: " + "http://"+ip+":" + SERVER_PORT + DEFAULT_URL);
            future.channel().closeFuture().sync();
        }
        finally
        {
            bossGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }
    
    public static void main(String[] args) throws Exception {

        CheckMem.checkError();
        String ip = "localhost";
        log.info(args.length);
        if (args.length<1){
            log.error("/n*****Please input the server PORT*****/n");
        }

        int port = new Integer(new Integer(args[0]));
//        new NettyServerTest().start(ip,9999);
        new NettyServerTest().start(ip,port);
    }
}
