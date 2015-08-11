package grailswebapp

import grails.transaction.Transactional

@Transactional
class TweetService {

    def getLastWeekData() {
        def now = new Date()
        def lastDay = now - 1
        def document = Tweet.findAllByDateBetween(lastDay,now)
        return document
    }
}
