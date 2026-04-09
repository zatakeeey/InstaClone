import UIKit

struct NavBarConfig {
    var title: String?
    var leftImage: UIImage?
    var rightImage: UIImage?
    var centerImage: UIImage?
}

protocol NavBarDelegate: AnyObject {
    func didTapLeftButton()
    func didTapRightButton()
}

class NavBarViewController: UIViewController {
    weak var myDelegate: NavBarDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
    }
    
    func setupNavBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    func configureNavBar(_ config: NavBarConfig) {
        title = config.title
        
        if let leftImage = config.leftImage {
            navigationItem.leftBarButtonItem = UIBarButtonItem(
                image: leftImage,
                style: .plain,
                target: self,
                action: #selector(leftTapped))
        } else { navigationItem.leftBarButtonItem = nil }
        
        if let rightImage = config.rightImage {
            navigationItem.rightBarButtonItem = UIBarButtonItem(
                image: rightImage,
                style: .plain,
                target: self,
                action: #selector(rightTapped))
        } else { navigationItem.rightBarButtonItem = nil }
        
        if let image = config.centerImage {
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFit
            navigationItem.titleView = imageView
        } else {
            navigationItem.titleView = nil
            title = config.title
        }
    }
    
    @objc
    func leftTapped() {
        myDelegate?.didTapLeftButton()
    }
    
    @objc
    func rightTapped() {
        myDelegate?.didTapRightButton()
    }
}
