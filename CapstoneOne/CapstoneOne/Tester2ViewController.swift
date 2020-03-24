//
//  Tester2ViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 3/10/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit

class Tester2ViewController: UIViewController {

    var menuShowing = false
    
    @IBOutlet weak var HamburgerLeadingConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openHamburger(_ sender: Any) {
        if (menuShowing) {
            HamburgerLeadingConstraint.constant = -150
        } else {
            HamburgerLeadingConstraint.constant = 0
            
        }
        
        menuShowing = !menuShowing
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
