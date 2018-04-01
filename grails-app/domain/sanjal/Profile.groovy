package sanjal

class Profile {
    int id
    String fullName
    String address
    String dob
    String sex
    byte[] picture
    String pictureType
    static belongsTo = User
    static constraints = {
        fullName(nullable:true)
        address(nullable:true)
        dob(nullable:true)
        sex(nullable:true)
        picture(nullable:true)
        pictureType(nullable: true)
    }
}
