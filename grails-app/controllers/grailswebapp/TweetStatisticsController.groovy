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
//        def document = TweetService.getLastWeekData()
        def now = new Date()
        def lastweek = now - 7

        def query = Tweet.where { sentimentRank == 1 && date > lastweek && date < now}
        def document = query.list()
        def negativeCount = document.size()
        println negativeCount
//        def document = Tweet.list()
        
        def doc = Tweet.findAllByDateBetweenAndSentimentRank(lastweek,now,2,null)
        
        [document:document, negative: negativeCount,doc:doc]
    }

    def showtweetstatics(){
        def now = new Date()
        def lastweek = now - 7
        def list = [ 1, 2, 3]
        def count = []
        def document

        // calculation of data for pie chart
        for( x in list) {
            document = Tweet.where { sentimentRank == x && date > lastweek && date < now }
            count << document.size()
            println count
        }

        def day = now - 7
        def map = [:]
        def countforday = []
        def doc
        // calculation of data for line graph
        def week = [1,2,3,4,5,6,7]
        for( d in week ){

            day += 1
            countforday = []

            for( x in list){
//                doc = Tweet.where { sentimentRank == x && date > lastweek && date < day }
                doc = Tweet.findAllByDateBetweenAndSentimentRank(lastweek,day,x,null)
                countforday << doc.size()

            }

            map.put(d,countforday)
            lastweek += 1
            println map

        }
        [count:count,map:map]
    }
}
