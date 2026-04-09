import UIKit

class MessageViewController: NavBarViewController, NavBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myDelegate = self
        
        configureNavBar(NavBarConfig(title: "Message", leftImage: UIImage(systemName: "person.circle"), rightImage: UIImage(systemName: "house"), centerImage: nil))
    }

    func didTapLeftButton() {
        print("Left tapped with delegate on Message!")
    }
    
    func didTapRightButton() {
        print("Right tapped with delegate on Message!")
    }
}

