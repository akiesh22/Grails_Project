package sanjal

class NewFilterFilters {

    def filters = {
        all(controller:'user|profile|status', action:'*',find:true) {
            before = {
                if (!session.userId)
                {
//                    redirect(url: "/index")
                }
            }
            after = { Map model ->


            }
            afterView = { Exception e ->

            }
        }
    }
}
