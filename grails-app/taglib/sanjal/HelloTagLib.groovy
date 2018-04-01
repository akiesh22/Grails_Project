package sanjal

class HelloTagLib {
    def hello={attrs->
def name=attrs.name
        if(!name)
        {
          out<<"hello anonymous"
        }
        else
        {
        out<<"hello "+name
        }
    }
}
