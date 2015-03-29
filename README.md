## This is a search engine for the Majestic Casual Youtube channel.
It's based out of a jetty template. 
It uses postgres for the database, jetty, maven. 

It's in pretty rough shape at the moment, there's a lot of unused code so any simplification would be greatly appreciated.

Improvments I would like to add:
-more unit tests
-query parameterization
-a framework (spring boot)
-more logging (log4j),
-liquibase
-youtube api integration
-travis integration
-improve readability of the main servlet (PostgresConnect.java) by seperating it up into different classes.


## Running the application locally

First build with:

    $mvn clean install

Then run it with:

    $java -cp target/classes:target/dependency/* com.seekmc.example.Main
    



