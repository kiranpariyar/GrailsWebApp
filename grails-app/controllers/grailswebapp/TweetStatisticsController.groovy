package grailswebapp

import com.gmongo.GMongo

class TweetStatisticsController {

    def index() {

        def mongo = new GMongo()
        def db = mongo.getDB("tweetdatabase")
//
//        def howmanytweets = db.tweet.count()
//        def count1 = db.tweet.find(sentimentRank: 1).count()
//        def count2 = db.tweet.find(sentimentRank: 2).count()
//        def count3 = db.tweet.find(sentimentRank: 3).count()

        // output each document to screen
//        doc.each {
//            println it
//        }
        redirect(action: list())
//        [howmanytweets:howmanytweets ,count1:count1,count2:count2,count3:count3,date1:date1,doc:doc ]
    }

    def list(){
//        def doc = Tweet.list()
        def now = new Date()
        def lastWeek = now - 7
        def doc1 = Tweet.findByDateBetween(lastWeek,now)

        def query = Tweet.where{ sentimentRank == 1}
        def doc2 = query.list()

        def count2 = doc2.size()

        def doc3 = Tweet.find{ sentimentRank == 1}
        [doc: doc1, doc2: doc2 , doc3:doc3, count2: count2]
    }

    def showtweet() {
        def doc = Tweet.list()

        [doc:doc]
    }

}
