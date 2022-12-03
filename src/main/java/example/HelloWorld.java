package example;

import com.google.gson.Gson;
import config.Config;
import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class HelloWorld {
  public static String sayHelloWorldFrom(String from) {
    Connection conn = Config.getInstance().sqlLogin();
    System.out.println(conn);
    String result = "Hello, world, from " + from;
    System.out.println(result);
//    getText("1");
    return result;
  }

  public static void getText(String id) {
    List<Map<String, Object>> listOfMaps = null;
    Connection conn = Config.getInstance().sqlLogin();
    Gson gson = new Gson();
    try {
      QueryRunner queryRunner = new QueryRunner();
      listOfMaps = queryRunner.query(conn,"SELECT * FROM `users` where `id` = ?;", new MapListHandler(), id);
      System.out.println(listOfMaps);
    } catch(SQLException se) {
      se.printStackTrace();
    } finally {
      DbUtils.closeQuietly(conn);
    }
  }
}
