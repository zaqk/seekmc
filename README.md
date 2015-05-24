## This is a search engine for the Majestic Casual Youtube channel.
This project is based out of a jetty template. 
It uses postgres, jetty, and maven. 

It's in pretty rough shape at the moment, there's a lot of unused code so any simplification would be greatly appreciated.

Improvements I would like to add: more unit tests, query parameterization, a framework (spring boot), more logging (log4j), liquibase, youtube api integration, travis integration, and improve readability of the main servlet (Search.java) by separating it up into different classes.

Also if you would like the url for the database contact me directly through email (zachking1218@gmail.com), and then just follow the comment instructions in SearchTest.java for running tests.

## Running the application locally

First build with:

    $mvn clean install

Then run it with:

    $java -cp target/classes:target/dependency/* com.seekmc.main.Main
    



