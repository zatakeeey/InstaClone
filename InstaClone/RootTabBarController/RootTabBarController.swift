import UIKit

class RootViewController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
    }
    
    private func setupTabs() {
        let firstVC = HomeViewController()
        let secondVC = ReelsViewController()
        let thirdVC = MessageViewController()
        let fourthVC = SearchViewController()
        let fifthVC = ProfileViewController()
        
        let firstNav = UINavigationController(rootViewController: firstVC)
        let secondNav = UINavigationController(rootViewController: secondVC)
        let thirdNav = UINavigationController(rootViewController: thirdVC)
        let fourthNav = UINavigationController(rootViewController: fourthVC)
        let fifthNav = UINavigationController(rootViewController: fifthVC)
        
        firstNav.tabBarItem.image = UIImage(systemName: "house")
        secondNav.tabBarItem.image = UIImage(systemName: "film")
        thirdNav.tabBarItem.image = UIImage(systemName: "paperplane")
        fourthNav.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        fifthNav.tabBarItem.image = UIImage(systemName: "person.circle")
        
        self.viewControllers = [firstNav, secondNav, thirdNav, fourthNav, fifthNav]
    }
    
}
