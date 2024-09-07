//
//
//  FirstXIB.swift
//  XIB -2
//
//  Created by ali on 04/09/2024.
//

import UIKit

class FirstXIB: UIView {

    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("FirstXIB", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = bounds
        containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func buttonName(name: String) {
        button.setTitle(name, for: .normal)
    }
}
