//
//  ViewController.swift
//  XIB-Demo
//
//  Created by ali on 28/08/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testView: TestView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // setting buttle title and corner radius
        testView.setButtonTitle("Click me!")
        testView.setButtonCornerRadius(6)
    }

}

