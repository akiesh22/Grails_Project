package sanjal

class UserService {

    def serviceMethod() {

    }

    def User login(String userEmail, String password) {
        // User user=User.findByUserEmailLikeAndPasswordLike(userEmail,password)
        def userList = User.createCriteria().list {
            and {eq('userEmail',userEmail)
            eq('password',password)}
        }
        User user = userList[0]
        return user
    }
}
