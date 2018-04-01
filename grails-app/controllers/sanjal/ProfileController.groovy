package sanjal

class ProfileController {

    def index() {
        def user=User.get(session.userId)
        def statusList=Status.list()
        statusList=statusList.reverse()
        render (view: '/profile/profileMe',model: [user:user, status:statusList])
    }
    def edit_profile(){
        def user=User.get(session.userId)
        def statusList=Status.list()
        statusList=statusList.reverse()
        render (view: '/profile/profileMe',model: [user:user, status:statusList, toggle:"edit"])

    }
    def profile_message()
    {
        def user=User.get(session.userId)
        def statusList=Status.list()
        statusList=statusList.reverse()
        render (view: '/profile/profileMe',model: [user:user, status:statusList, toggle:"thoughts"])
    }
    def save_profile(){
        def user=User.get(session.userId)
        def photo=request.getFile('picture')
        if (!user.profile) {
            def profile = new Profile()
            user.profile = profile
        }
        if(params.fullName) {
            user.profile.properties['fullName'] = params
        }
        if(params.address) {
            user.profile.properties['address'] = params
        }
        if(params.dob) {
            user.profile.properties['dob'] = params
        }
        if(params.sex) {
            user.profile.properties['sex'] = params
        }
        if(photo.bytes) {
            user.profile.picture = photo.bytes
            user.profile.pictureType = photo.contentType
        }
        if (user.save())
        {
            def userList = User.createCriteria().list {
                and {
                    notEqual("id", session.userId)
                }
            }
            def statusList = Status.list()
            Set<User> peopleYou=new HashSet<>()
            for (User ul:userList) {
                if (user?.following?.contains(ul)) {
                    ul.following.each {
                        peopleYou.add(it)
                    }
                }
            }
            statusList=statusList.reverse()
            userList=userList.reverse()
            render view:"/user/home",model: [user:user,userList:userList,status:statusList,peopleYou:peopleYou]

        }
        else {
            render(view: '/profile/profileMe')
        }
    }
    def display_picture()
    {
        def user=User.get(params.id)
        if(!user||!user.profile.picture||!user.profile.pictureType)
        {
           response.sendError(404)
            return
        }
        response.contentType=user.profile.pictureType
        response.contentLength=user.profile.picture.size()
        OutputStream out=response.outputStream
        out.write(user.profile.picture)
        out.close()
    }
    def followingList_profile()
    {
        def user=User.get(session.userId)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render (view: '/profile/profileList',model: [user:user,ListF:userList, toggle:"following"])
    }
    def followersList_profile()
    {
        def user=User.get(session.userId)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render (view: '/profile/profileList',model: [user:user,ListF:userList, toggle:"followers"])
    }
    def unFollowUser()
    {
        String uf=params.unfollow
        User u=User.findById(session.userId)
        User u1=User.findById(uf)
        u1.removeFromFollowers(u)
        u.removeFromFollowing(u1)
        u.save(flush: true)
        u1.save(flush: true)
        def user=User.get(session.userId)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render(template: "/user/userList",collection:userList,var: "userList",model: [user:user])
    }
    def unFollowFromProfile()
    {
        String uf=params.unfollow
        String value=params.toggle
        println "i am here from follow"
        println value
        User u=User.findById(session.userId)
        User u1=User.findById(uf)
        u1.removeFromFollowers(u)
        u.removeFromFollowing(u1)
        u.save(flush: true)
        u1.save(flush: true)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render (view: '/profile/profileList',model: [user:u,ListF:userList, toggle:value])

    }
    def FollowFromProfile()
    {

        String f=params.follow
        String value=params.toggle
        User u=User.findById(session.userId)
        User u1=User.findById(f)
        u1.addToFollowers(u)
        u.addToFollowing(u1)
        u.save(flush: true)
        u1.save(flush: true)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render (view: '/profile/profileList',model: [user:u,ListF:userList, toggle:value])
    }
    def view_profile(){
        User user=User.get(params.profileid)
        println "check check"
        println params.profileid;
        def statusList=Status.list()
        statusList=statusList.reverse()
        render (view: '/profile/profileOther',model: [user:user,status: statusList])

    }
}
