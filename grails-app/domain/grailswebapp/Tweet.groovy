package grailswebapp

import org.bson.types.ObjectId

class Tweet {

    static mapWith = "mongo"
    ObjectId id
    Date date;
    String name;
    String tweet;
    int noOfFollower;
    int retweet;
    String sentiment;
    int sentimentRank;

    static constraints = {
        name(blank: false)
        tweet(blank: false)
        noOfFollower(blank: true)
        retweet(blank: true)
        sentiment(blank: false)
        sentimentRank(blank: false)
    }
}
