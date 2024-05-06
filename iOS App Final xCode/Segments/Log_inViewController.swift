//
//  Log_inViewController.swift
//  iOS App Final xCode
//
//  Created by Aden Whitesel on 5/5/24.
//

import UIKit

class Log_inViewController: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        EmailTextField.attributedPlaceholder = NSAttributedString(string: " Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 99.0/255.0, green: 99/255.0, blue: 102.0/255.0, alpha: 0.6)])
        
        PasswordTextField.attributedPlaceholder = NSAttributedString(string: " Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 99.0/255.0, green: 99/255.0, blue: 102.0/255.0, alpha: 0.6)])
        
        
        EmailTextField.addBottomBorderWithColor(color: UIColor.lightGray, width: 0.5)
        PasswordTextField.addBottomBorderWithColor(color: UIColor.lightGray, width: 0.5)
        
        
        
        self.EmailTextField.addPaddingToTextField()
        self.PasswordTextField.addPaddingToTextField()
    }
    

    

}

extension UIView {
    func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width - 25, height: width)
        self.layer.addSublayer(border)
    }
}


extension UITextField {
    func addPaddingToTextField() {
        let paddingView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 8, height: 0))
        self.leftView = paddingView;
        self.leftViewMode = .always;
        self.rightView = paddingView;
        self.rightViewMode = .always;
    }
}
