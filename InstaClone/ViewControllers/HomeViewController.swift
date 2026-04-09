import UIKit

class HomeViewController: NavBarViewController, NavBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myDelegate = self
        
        configureNavBar(NavBarConfig(title: "home", leftImage: UIImage(systemName: "house"), rightImage: UIImage(systemName: "film"), centerImage: nil))
        
    }

    func didTapLeftButton() {
        print("Left tapped with delegate!")
    }
    
    func didTapRightButton() {
        print("Right tapped with delegate!")
    }
}
