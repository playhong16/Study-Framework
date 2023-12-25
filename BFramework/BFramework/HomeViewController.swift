//
//  HomeViewController.swift
//  BFramework
//
//  Created by playhong on 2023/12/24.
//

import UIKit

public class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(homeView)
        homeView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            homeView.topAnchor.constraint(equalTo: self.view.topAnchor),
            homeView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            homeView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            homeView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
