//
//  RegisterViewController.swift
//  iOS App Final xCode
//
//  Created by Aden Whitesel on 5/5/24.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var ConfirmpassTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        EmailTextField.attributedPlaceholder = NSAttributedString(string: " Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 99.0/255.0, green: 99/255.0, blue: 102.0/255.0, alpha: 0.6)])
        
        PasswordTextField.attributedPlaceholder = NSAttributedString(string: " Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 99.0/255.0, green: 99/255.0, blue: 102.0/255.0, alpha: 0.6)])
        
        ConfirmpassTextField.attributedPlaceholder = NSAttributedString(string: " Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 99.0/255.0, green: 99/255.0, blue: 102.0/255.0, alpha: 0.6)])
        
        
        EmailTextField.addBottomBorderWithColor(color: UIColor.lightGray, width: 0.5)
        PasswordTextField.addBottomBorderWithColor(color: UIColor.lightGray, width: 0.5)
        ConfirmpassTextField.addBottomBorderWithColor(color: UIColor.lightGray, width: 0.5)
        
        
        
        self.EmailTextField.addPaddingToTextField()
        self.PasswordTextField.addPaddingToTextField()
        self.ConfirmpassTextField.addPaddingToTextField()
    }
    

   

}
