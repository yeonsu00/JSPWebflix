package config;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//
//// Enum Singleton
//public class Config {
//    private Config() {}
//    private static class Singleton {
//        private static final Config instance = new Config();
//    }
//
//    public static Config getInstance() {
//        return Singleton.instance;
//    }
//    // DB 커넥션 Variable
//    private Connection conn = null;
//    // DB 정보
//    private String url ="jdbc:mysql://localhost:3306/webmarketjsp?user=root&password=NewSt@rt!70";
//
//    public Connection sqlLogin() {
//        try {
////            Class.forName("org.mysql.jdbc.Driver");
//            Class.forName("com.mysql.jdbc.Driver");
//            conn = DriverManager.getConnection(url);
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println(e);
//            System.out.println("DB 연결 실패. mysql의 아이디 비밀번호가 Config 클래스와 일치하는지 확인해주세요.");
//        }
//        return conn; //DB 사용을 요구했던 메소드에게 로그인 정보를 돌려줌.
//    }
//}

import java.sql.Connection;
import java.sql.DriverManager;

// Enum Singleton
public class Config {

    private Config() {}
    private static class Singleton {
        private static final Config instance = new Config();
    }

    public static Config getInstance() {
        return Singleton.instance;
    }
    // DB 커넥션 Variable
    private Connection conn = null;

    // DB 정보

    private final String tool = "jdbc:mysql://";
    private final String port = "3306";

    private final String domain = "localhost";
    private final String id = "root";
    private final String pw = "NewSt@rt!70";
    private final String dbname = "webflix";

    private String url = tool + domain + ":" + port + "/" + dbname
            + "?autoReconnect=true&useSSL=false&validationQuery=select 1&allowPublicKeyRetrieval=true";

    public Connection sqlLogin() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, id, pw);

        } catch (Exception e) {
            System.out.println(e);
            e.printStackTrace();
            System.out.println("DB 연결 실패");
        }
        return conn;
    }
}

