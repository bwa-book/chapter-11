import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var image: WKInterfaceImage!
    @IBOutlet var label: WKInterfaceLabel!
    
    @IBAction func buttonTapped() {
        
    }
    
    private var text = "Tap the button to say something"
    
    override func willActivate() {
        super.willActivate()
        
        label.setText(text)
    }

}
