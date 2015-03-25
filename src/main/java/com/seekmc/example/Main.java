package com.seekmc.example;

import com.seekmc.db.DB;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.webapp.WebAppContext;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Logger;

/**
 * This class launches the web application in an embedded Jetty container.
 * This is the entry point to your application. The Java command that is used for
 * launching should fire this main method.
 */
public class Main {

    private static final Logger log = Logger.getLogger(Main.class.getName());
    private static final String TABLE_NAME = "main";

    /**
     * @param args
     */
    public static void main(String[] args) throws Exception {
        String webappDirLocation = "src/main/webapp/";

        //The port that we should run on can be set into an environment variable
        //Look for that variable and default to 8080 if it isn't there.
        String webPort = System.getenv("PORT");
        if (webPort == null || webPort.isEmpty()) {
            webPort = "8080";
        }

        log.info("Validating DB...");
        validateDB();

        Server server = new Server(Integer.valueOf(webPort));
        WebAppContext root = new WebAppContext();

        root.setContextPath("/");
        root.setDescriptor(webappDirLocation + "/WEB-INF/web.xml");
        root.setResourceBase(webappDirLocation);

        //Parent loader priority is a class loader setting that Jetty accepts.
        //By default Jetty will behave like most web containers in that it will
        //allow your application to replace non-server libraries that are part of the
        //container. Setting parent loader priority to true changes this behavior.
        //Read more here: http://wiki.eclipse.org/Jetty/Reference/Jetty_Classloading
        root.setParentLoaderPriority(true);

        server.setHandler(root);
        server.start();
        server.join();
    }

    /**
     * Attempts to connect to the DB and ensures that the necessary tables exist. Calls System.exit if there is a problem connecting to the DB
     */
    private static void validateDB() {
        try {
            Connection conn = DB.getConnection();
            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery("select count(*) from " + TABLE_NAME);
            rs.next();
            Long count = rs.getLong(1);
            if (count == null) {
                throw new RuntimeException("Error communicating with DB");
            }
            log.info("Successfully connected to DB, counted " + count + " rows in " + TABLE_NAME);
        } catch (Exception e) {
            log.severe("Exception validating DB! " + e);
            System.exit(1);
        }
    }

}
