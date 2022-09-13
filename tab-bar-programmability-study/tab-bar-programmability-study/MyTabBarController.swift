//
//  MyTabBarController.swift
//  tab-bar-programmability-study
//
//  Created by Sillas Santos on 13/09/22.
//

import Foundation
import UIKit

class MyTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }
    
    private func setupTabBarController() {
        let tela1 = UINavigationController(rootViewController: Tela01())
        let tela2 = UINavigationController(rootViewController: Tela02())
        let tela3 = UINavigationController(rootViewController: Tela03())
        let tela4 = UINavigationController(rootViewController: Tela04())
        let tela5 = UINavigationController(rootViewController: Tela05())
        
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        setViewControllers([tela1, tela2, tela3, tela4, tela5], animated: false)
        
        guard let items = tabBar.items else { return }
        
        items[0].title = " Tela 1"
        items[0].image = UIImage(systemName: "bag.fill")
        items[1].title = " Tela 2"
        items[1].image = UIImage(systemName: "clock.fill")
        items[2].title = " Tela 3"
        items[2].image = UIImage(systemName: "person.fill")
        items[3].title = " Tela 4"
        items[3].image = UIImage(systemName: "figure.walk")
        items[4].title = " Tela 5"
        items[4].image = UIImage(systemName: "shield")
        
    }
}

class Tela01: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
}

class Tela02: UIViewController {
    
    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemPink
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1.5).isActive = true
    }
}

class Tela03: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
    }
}

class Tela04: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela 4"
        view.backgroundColor = .systemPink
    }
}

class Tela05: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
}
