package sanjal

import grails.plugin.geocode.Point

class UserController {
    def userService
    def GeocodingService

    def index() {
        def user = User.get(session.userId)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        def statusList = Status.list()
        render(template: "/status/postEntries", collection: statusList, var: "status")
        render(template: "/user/userList", collection: userList, var: "userList", model: [user: user])
    }

    def login() {
        String userEmail = params.userEmail;
        String password = params.password;
        println(userEmail)
        User user = userService.login(userEmail, password)
        if (user) {
            session.userId = user.id
            def userList = User.createCriteria().list {
                and {
                    notEqual("id", session.userId)
                }
            }

            Point location = GeocodingService.getPoint('dhumbarahi,kathmandu,nepal')

            Float latitude = location.latitude
            Float longitude = location.longitude
            System.out.println("i am " + latitude + "ok boss" + longitude)
            def statusList = Status.list()
            Set<User> peopleYou = new HashSet<>()
            for (User ul : userList) {
                if (user?.following?.contains(ul)) {
                    ul.following.each {
                        peopleYou.add(it)
                    }
                }
            }
            statusList = statusList.sort {
                it.dateCreated
            }.reverse();

            userList = userList.reverse()
            render view: "/user/home", model: [user: user, userList: userList, status: statusList, peopleYou: peopleYou]

        } else {
            render view: "/index", model: [message: "Invalid Email/Password"]
        }
    }

    def logout() {
        session.userId = null;
        render view: "/index"

    }

    def register() {
        User user = new User(params)
        boolean saved = user.save()
        if (saved == true) {
            render view: "/index", model: [message: "Register Successful Please Login"]
        } else {
            //println(user.errors)
            render view: "/index", model: [message: "Register Unsuccessful"]
        }
    }

    def update() {
        render "updated"
    }

    def listUser() {
        def user = User.get(session.userId)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render(template: "/user/userList", collection: userList, var: "userList", model: [user: user])
    }

    def followUser() {
//        def R = 6371; // Radius of the earth in km
//        def dLat = deg2rad(lat2-lat1);  // deg2rad below
//        def dLon = deg2rad(lon2-lon1);
//        def a =
//                Math.sin(dLat/2) * Math.sin(dLat/2) +
//                        Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
//                        Math.sin(dLon/2) * Math.sin(dLon/2)
//        ;
//        def c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
//        def d = R * c; //dis in km
//


        String f = params.follow
        User u = User.findById(session.userId)
        User u1 = User.findById(f)
        u1.addToFollowers(u)
        u.addToFollowing(u1)
        u.save(flush: true)
        u1.save(flush: true)
        def user = User.get(session.userId)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render(template: "/user/userList", collection: userList, var: "userList", model: [user: user])

    }

    def unFollowUser() {
        String uf = params.unfollow
        User u = User.findById(session.userId)
        User u1 = User.findById(uf)
        u1.removeFromFollowers(u)
        u.removeFromFollowing(u1)
        u.save(flush: true)
        u1.save(flush: true)
        def user = User.get(session.userId)
        def userList = User.createCriteria().list {
            and {
                notEqual("id", session.userId)
            }
        }
        render(template: "/user/userList", collection: userList, var: "userList", model: [user: user])
    }


}
