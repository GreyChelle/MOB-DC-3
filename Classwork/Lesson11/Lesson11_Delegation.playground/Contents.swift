/******************************Country.swift**********************/
//two classes at least for delegation
//inheriting horizontally
//protocol is how one class passes on values to another class
//always prefix with class and suffix with delegate for protocol
/*Step1:create two classes
Step2: Create protocol
Step 3: input protocol name after delegate class
Step 4: put func or statement in protocol
Step 5: put func in delegate class
Step 6: create var in dict class that colons to protocol with question mark
Step 7: Make an instance with let or var equal to the dict class
Extra Tidbit: Mostly use let to avoid changes
put classes in different swift files*/

protocol CountryDelegate {
    func negotiate()
    
}

class Country {
    var delegate: CountryDelegate?
    func performNegotiation() {
        if let delegate = delegate {
            delegate.negotiate()
        }
    }
}

/*****************************************/

/***********Ambassador.swift*******************/
//spokesperson is the delegate; takes orders from Country
class Ambassador: CountryDelegate {
    func negotiate() {
        println("I shall negotiate!")
        
    }
}

let usa = Country()
let devin = Ambassador()
usa.performNegotiation()

/*ask why can't do devin.negotiate like in other example with countries where we did handy.startWar when startWar function was from Delegate class and performNegotiation is from Dictator class*/
/*thought you could pick and choose which delegate protocols wanted for delegate?
answer: You can change the outcome within the function to differentiate between delegates*/
/*super.func of parent class will do whatever that class does
..fuck i'm confused now: ask if take all funcs of dictator class, ask if super is always called for child of parent class, ask why can use func from delegate in last example and not func from delegate in this example
    answer: yes, take all funcs of dictator class
    super is always used in subclass of delegate like lieu of ambassador
    can use either func or dictator or delegate as long as match up like devin.negotiate or usa.performNegotiation*/
class Lieu: Ambassador{
    override func negotiate() {
        println("I shall not negotiate")
    }
}
