package grailswebapp

class DashboardController {

    def index() {
        redirect(action: "summary")
    }

    def summary(){

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
                doc = Tweet.findAllByDateBetweenAndSentimentRank(lastweek,day,x,null)
                countforday << doc.size()

            }

            map.put(d,countforday)
            lastweek += 1
            println map

        }

        def totaltweet = count.sum()
        def positivepercent = 100*count.get(2)/totaltweet
        def negativepercent = 100*count.get(0)/totaltweet
        def neutralpercent = 100*count.get(1)/totaltweet

        [count:count, map:map, positive:positivepercent, negative:negativepercent, neutral:neutralpercent]

    }
}
