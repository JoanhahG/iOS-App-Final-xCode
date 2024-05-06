//
//  AccountViewController.swift
//  iOS App Final xCode
//
//  Created by Carr O'Connor on 4/24/24.
//

import UIKit

class AccountViewController: UIViewController {
    @IBOutlet weak var SegmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var Loginsegment: UIView!
    
    @IBOutlet weak var RegisterSegment: UIView!
    override func viewDidLoad() {
        //Account controller code here
        self.title = "Account"
        
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        SegmentOutlet.setTitleTextAttributes(titleTextAttributes, for: .normal)
        
        self.view.bringSubviewToFront(Loginsegment)
        
    }
    
    @IBAction func SegmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.bringSubviewToFront(Loginsegment)
        case 1:
            self.view.bringSubviewToFront(RegisterSegment)
        default:
            break
        }
    }
    
    
}
