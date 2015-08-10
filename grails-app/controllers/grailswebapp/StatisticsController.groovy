package grailswebapp

import com.gmongo.GMongo

class StatisticsController {

    def index() {
        def people = Tweet.list()

        for(p in people){
            println p.name
        }

        def count = Tweet.withCriteria{ projections {countDistinct('sentiment')} }

        def mongo = new GMongo()
        def db = mongo.getDB("grailswebapp")

        def howmanytweets = db.tweet.count()

        [p:people,c:count, tweetcount:howmanytweets]
    }
}
