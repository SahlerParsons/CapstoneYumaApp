//
//  HamburgerViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 3/10/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit

class HamburgerViewController: UIViewController {

    var menuShowing = false
    
    @IBOutlet weak var LeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var slideOutView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImage.init(named: "UAYuma")
        let backgroundImageView = UIImageView.init(frame: self.view.frame)

        backgroundImageView.image = backgroundImage
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.alpha = 1.0

        self.view.insertSubview(backgroundImageView, at: 0)

        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openHamburgerMenu(_ sender: Any) {
        
        if (menuShowing) {

            slideOutView.isHidden = true
            
        } else {
         
//        UIView.animate(withDuration: 1.0, animations: {
//                self.slideOutView.center = self.view.center
//                })
            slideOutView.isHidden = false
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
