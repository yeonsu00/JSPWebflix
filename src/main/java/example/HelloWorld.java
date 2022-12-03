package example;

import config.Config;

import java.sql.Connection;

public class HelloWorld {
  public static String sayHelloWorldFrom(String from) {
    Connection conn = Config.getInstance().sqlLogin();
    System.out.println(conn);
    String result = "Hello, world, from " + from;
    System.out.println(result);
    return result;
  }
}
