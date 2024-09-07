//
//  ThirdXIB.swift
//  XIB -2
//
//  Created by ali on 04/09/2024.
//

import UIKit

class ThirdXIB: UIView {
    
    @IBOutlet var containerView: UIView!
    
    
    
    @IBOutlet var segmentSwitch: UISwitch!
    
    @IBOutlet weak var button: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("ThirdXIB", owner: self)
        addSubview(containerView)
        containerView.frame = bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func buttonNameAndColor(name: String, color: UIColor, tintColor: UIColor) {
        button.titleLabel?.text = name
        button.backgroundColor = color
        button.tintColor = tintColor
        button.layer.cornerRadius = 12
    }
    
    func segmentBtn(color: UIColor) {
        segmentSwitch.backgroundColor = color
    }
}
