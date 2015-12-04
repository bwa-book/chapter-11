import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var image: WKInterfaceImage!
    @IBOutlet var label: WKInterfaceLabel!
    
    @IBAction func buttonTapped() {
        let suggestions = [
            "Game over, man! Game over!",
            "Hello. My name is Inigo Montoya.",
            "That's a big Twinkie.",
            "Let's see what happens when we take away the puppy.",
            "In the end there can be only one."
        ]
        
        presentTextInputControllerWithSuggestions(suggestions, allowedInputMode: .Plain) { responses in
            if let responses = responses where responses.count > 0 {
                if let response = responses.first as? String {
                    self.text = response
                    self.label.setText(self.text)
                }
            }
        }
    }
    
    private var text = "Tap the button to say something"
    
    override func willActivate() {
        super.willActivate()
        
        label.setText(text)
    }
    

}
