package org.example;

import org.flywaydb.core.Flyway;
import org.jetbrains.annotations.NotNull;

import java.util.logging.Level;
import java.util.logging.Logger;

public class Main {
    public static void main(String[] args) {
        @NotNull final Logger logger = Logger.getLogger(Main.class.getName());
        logger.log(Level.INFO, """
                Pass parameters on startup:
                1 arg - IP:PORT,
                2 arg - Database name,
                3 arg - Username,
                4 arg - Password
                """);

        try {
            final Flyway flyway = Flyway
                    .configure()
                    .dataSource("jdbc:postgresql://" + args[0] + "/" + args[1], args[2], args[3])
                    .locations("db")
                    .load();
            flyway.migrate();
        } catch (Exception e) {
            e.printStackTrace();
            logger.log(Level.WARNING, "Invalid data at startup.");
        }
        System.out.println("Migrations applied successfully!");
    }
}