//
//  SecondXIB.swift
//  XIB -2
//
//  Created by ali on 04/09/2024.
//

import UIKit

class SecondXIB: UIView {

    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var txtField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SecondXIB", owner: self)
        addSubview(containerView)
        containerView.frame = bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func searchBarPlaceholder(text: String, bgColor: UIColor) {
        txtField.placeholder = text
//        txtField.layer.backgroundColor = UIColor(red: 0.5, green: 0.7, blue: 0.2, alpha: 1.0).cgColor
        txtField.backgroundColor = bgColor

    }
    

}
