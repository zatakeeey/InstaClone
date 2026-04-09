import UIKit

class ReelsViewController: NavBarViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavBar(NavBarConfig(title: "Reels", leftImage: UIImage(systemName: "house"), rightImage: nil, centerImage: nil))
    }


}

