//: Playground - noun: a place where people can play

//label.text = "4.56"

//change font size to minimum font scale in autoshrink

class Class {
    override func viewDidLoad() {
        var button1 = UIButton?
        var button2 = UIButton?
        var button3 = UIButton?
        
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        for v in view.subview {
            if (v is UIButton) {
                let button = v as! UIButton
                button.layer.borderColor = UIColor.blackColor().CGColor
                button.layer.borderWidth = 1.0
            }
        }
    }
   
}