package com.vova.tessarwebserver.dbmapper;


import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.vova.tessarwebserver.domain.User;
import com.vova.tessarwebserver.domain.initdata.SelectList;
import com.vova.tessarwebserver.domain.newadd.NewAddDay;
import com.vova.tessarwebserver.domain.payment.PayAllShow;
import com.vova.tessarwebserver.domain.stayman.StayParent;
import org.apache.ibatis.annotations.*;

import java.util.Date;
import java.util.List;

/**
 * @author: Vova
 * @create: date 15:40 2017/12/29
 */
//    @Select("<script>" +
//            "select * from ${tableName} " +
//            "where gID = #{gid} AND sID = #{sid} " +
//            "<![CDATA[AND dateID >= #{sDate} AND dateID <= #{eDate}]]>" +
//            "<if test='cid!=null'>" +
//            " and  cID = #{cid}" +
//            "</if>" +
//            "</script>")
@Mapper
public interface AllInOneMapper {
    //新增数据多条件查找
    @Select("<script> " +
            "SELECT * " +
            "from ${tableName} " +
            " where <![CDATA[dateID >= #{sDate} AND dateID <= #{eDate}]]>" +
            " <if test= 'cid != null'> AND cID=#{cid}</if> " +
            " <if test= 'gid != null'> AND gID=#{gid}</if> " +
            " <if test= 'sid != null'> AND sID=#{sid}</if> " +
            " </script> ")

    List<NewAddDay> findCGSNewAddListByTimes(@Param("tableName") String tableName, @Param("cid") String cid, @Param("gid") String gid,
                                             @Param("sid") String sid, @Param("sDate") Date sDate, @Param("eDate") Date eDate);

//    @Select("select * from ${tableName} where dateID >= #{sDate} AND dateID <= #{eDate} ")
//    List<NewAddDay> findAllNewAddListByTimes(@Param("tableName") String tableName, @Param("sDate") Date sDate, @Param("eDate") Date eDate);

    @Select("<script>" +
            "select * from ${tableName} where " +
            "<![CDATA[dateID >= #{sDate} AND dateID <= #{eDate}]]>" +
            " <if test= 'cid != null'> AND cID=#{cid}</if> " +
            " <if test= 'gid != null'> AND gID=#{gid}</if> " +
            " <if test= 'sid != null'> AND sID=#{sid}</if> " +
            "</script>")
    List<StayParent> findCGSStayListByTimes(@Param("tableName") String tableName, @Param("cid") String cid, @Param("gid") String gid,
                                            @Param("sid") String sid, @Param("sDate") Date sDate, @Param("eDate") Date eDate);

//    @Select("select * from ${tableName} where dateID >= #{sDate} AND dateID <= #{eDate} ")
//    List<StayParent> findStayListByTimes(@Param("tableName") String tableName, @Param("sDate") Date sDate, @Param("eDate") Date eDate);

    //由于数据库中的接口一样，所以这里channellist代替其他两个表的表名
    @Select("select * from ${tableName}")
    List<SelectList> findCGS(@Param("tableName") String tableName);

    //
    @Select("<script>" +
            "select * from ${tableName} where " +
            "<![CDATA[dateID >= #{sDate} AND dateID <= #{eDate}]]>" +
            " <if test= 'cid != null'> AND cID=#{cid}</if> " +
            " <if test= 'gid != null'> AND gID=#{gid}</if> " +
            " <if test= 'sid != null'> AND sID=#{sid}</if> " +
            "</script>")
    List<PayAllShow> findCGSPayAllShowByTimes(@Param("tableName") String tableName, @Param("cid") String cid, @Param("gid") String gid,
                                              @Param("sid") String sid, @Param("sDate") Date sDate, @Param("eDate") Date eDate);

//    @Select("select * from ${tableName} where  dateID >= #{sDate} AND dateID <= #{eDate} ")
//    List<PayAllShow> findPayAllShowByTimes(@Param("tableName") String tableName, @Param("sDate") Date sDate, @Param("eDate") Date eDate);

    @Select("select * from user where name = #{name}")
    List<User> findUserList(@Param("name") String name);

    @Select("select * from user where name = #{name} and passwd=#{passwd}")
    List<User> checkUser(@Param("name") String name, @Param("passwd") String passwd);

    @Insert("insert into user (name,passwd) values(#{name},#{passwd})")
    int insertUser(@Param("name") String name, @Param("passwd") String passwd);

}


