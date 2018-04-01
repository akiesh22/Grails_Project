package sanjal

class Status {
int id
    String tweet
    Date dateCreated
    static belongsTo = [user:User]
    static constraints = {
        tweet(blank:false,size: 1..150)
    }
}
