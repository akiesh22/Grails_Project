package sanjal

class StatusController {

    def index() {
    }

    def updateStatus() {
        User u = User.get(session.userId)
        Status status = new Status(params)
        u.addToStatus(status);
        u.save(flush: true)
        def statusList = Status.list()
        statusList=statusList.reverse()
        render(template: "/status/postEntries", collection: statusList, var: "status",model: [user:u])
    }
    def deleteStatus()
    {
        User u = User.get(session.userId)
        Status status =Status.get(params.delId)
    status.delete(flush: true)
        def statusList = Status.list()
        render(template: "/status/postEntries", collection: statusList, var: "status",model: [user:u])
    }
def deleteProfileStatus()
{

    User u = User.get(session.userId)
    println("you are here atleast")
    Status status =Status.get(params.delId)
    status.delete(flush: true)
    def statusList = Status.list()
    render(template: "/status/profileStatus", collection: statusList, var: "status",model: [user:u])
}
}









































































































































































