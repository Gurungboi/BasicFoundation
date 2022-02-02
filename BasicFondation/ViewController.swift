//
//  ViewController.swift
//  BasicFondation
//
//  Created by Sunil on 2/2/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSwiftui(_ sender: Any) {
        self.showSwiftUI()
    }
    
    func showSwiftUI() {
        let basic = BasicFondation.Basic()
        let controller = UIHostingController(rootView: basic)
           addChild(controller)
           controller.view.translatesAutoresizingMaskIntoConstraints = false
           view.addSubview(controller.view)
           controller.didMove(toParent: self)

           NSLayoutConstraint.activate([
               controller.view.widthAnchor.constraint(equalTo: view.widthAnchor),
               controller.view.heightAnchor.constraint(equalTo: view.heightAnchor),
               controller.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               controller.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
           ])
    }
    
}

