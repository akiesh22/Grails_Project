package sanjal

class WelcomebackTagLib {
def welcomeBack={attrs,body->
    def message=attrs.message
    println ("what is going on here"+message)
    if(message==null)
    {
out<<body()
    }}
}
