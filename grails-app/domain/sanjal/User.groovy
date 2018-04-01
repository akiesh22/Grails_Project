package sanjal

class User {
    int id
    String userEmail
    String password
    Profile profile
    static hasMany =[status:Status,followers:User,following:User]
    static constraints = {
        userEmail(email:true,blank:false,unique:true)
        password(minSize:8,blank:false)
        profile(nullable: true)
        status(nullable: true)
        followers(nullable: true)
        following(nullable: true)
    }
}
