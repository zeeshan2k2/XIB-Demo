//
//  TestView.swift
//  XIB-Demo
//
//  Created by ali on 28/08/2024.
//

import UIKit

class TestView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var btn: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
      // load the nib file
      Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
      addSubview(containerView)
      containerView.frame = bounds
      containerView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    // Public method to set the button title
    func setButtonTitle(_ title: String) {
        btn.setTitle(title, for: .normal)
    }
    
    // Public method to set button radius
    func setButtonCornerRadius(_ radius: Int) {
        btn.layer.cornerRadius = CGFloat(radius)
        btn.layer.masksToBounds = true
    }
}
