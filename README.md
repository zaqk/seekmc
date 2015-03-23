## This is a search engine for the Majestic Casual Youtube channel.
It's based out of a jetty template. 
It uses postgres for the database, jetty, maven. 

It's in pretty rough shape at the moment, there's a lot of unused code so any simplification would be greatly appreciated.


# Embedded Jetty template application

This is a template for a web application that uses embedded Jetty. The sample code consists of a JSP (this page) and a simple servlet.

## Running the application locally

First build with:

    $mvn clean install

Then run it with:

    $java -cp target/classes:target/dependency/* com.example.Main
    



