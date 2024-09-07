//
//  ViewController.swift
//  XIB -2
//
//  Created by ali on 04/09/2024.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    var firstXIB_VC = FirstXIB()
//    
//    var secondXIB_VC = SecondXIB()
//    
//    var thirdXIB_VC = ThirdXIB()
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//        firstXIB_VC.buttonName(name: "click me!")
//        secondXIB_VC.searchBarPlaceholder(text: "Enter Text", bgColor: UIColor.lightGray.cgColor)
//    }
//
//}



import UIKit

class ViewController: UIViewController {

    var firstXIB_VC: FirstXIB! // Define as an optional or use `!`
    var secondXIB_VC: SecondXIB! // Assume similar to FirstXIB
    var thirdXIB_VC: ThirdXIB! // Assume similar to FirstXIB
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load FirstXIB and add it to the view
        firstXIB_VC = FirstXIB(frame: CGRect(x: 21, y: 126, width: self.view.frame.width, height: 150))
        self.view.addSubview(firstXIB_VC)
        
        // Set the button name for FirstXIB
        firstXIB_VC.buttonName(name: "Click me!")
        firstXIB_VC.button.backgroundColor = .cyan
        firstXIB_VC.button.layer.cornerRadius = 12
        firstXIB_VC.button.tintColor = .black
        
        // Load SecondXIB and add it to the view
        secondXIB_VC = SecondXIB(frame: CGRect(x: 21, y: 353, width: self.view.frame.width, height: 150))
        self.view.addSubview(secondXIB_VC)
        
        // Set the search bar placeholder and background color for SecondXIB
        secondXIB_VC.searchBarPlaceholder(text: "Enter Text", bgColor: .lightGray)
        
        // Load ThirdXIB and add it to the view
        thirdXIB_VC = ThirdXIB(frame: CGRect(x: 21, y: 582, width: self.view.frame.width, height: 150))
        self.view.addSubview(thirdXIB_VC)
        
        thirdXIB_VC.buttonNameAndColor(name: "green", color: .magenta, tintColor: .white)
        thirdXIB_VC.segmentSwitch.thumbTintColor = .lightGray
        thirdXIB_VC.segmentSwitch.onTintColor = .green

    }
}

