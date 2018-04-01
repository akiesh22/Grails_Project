package sanjal

class FollowTagLib {
    def followTag={attrs,body->
        def message=attrs.follow
        User user=User.findByFollowingLike(message)
        if(user==null)
        {
            out<<body()
        }}

}
