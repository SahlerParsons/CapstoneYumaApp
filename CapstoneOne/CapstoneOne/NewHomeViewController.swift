//
//  NewHomeViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 3/21/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit

class NewHomeViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    

    
    @IBOutlet weak var semesterButton: UIButton!
    @IBOutlet weak var d2lButton: UIButton!
    @IBOutlet weak var uaBridgeButton: UIButton!
    @IBOutlet weak var requestInfoButton: UIButton!
    @IBOutlet weak var prospectiveStudentBorderLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImage.init(named: "UAYuma")
           let backgroundImageView = UIImageView.init(frame: self.view.frame)

           backgroundImageView.image = backgroundImage
           backgroundImageView.contentMode = .scaleAspectFill
           backgroundImageView.alpha = 1.0

           self.view.insertSubview(backgroundImageView, at: 0)
        

        
    }
    
    @IBAction func d2lButtonPressed(_ sender: Any) {
            UIApplication.shared.open(URL(string: "https://d2l.arizona.edu")! as URL,
                                      options: [:], completionHandler: nil)
        }
    
    @IBAction func uayumaButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://yuma.arizona.edu")! as URL,
                                             options: [:], completionHandler: nil)
    }
    
    @IBAction func uaccessButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://uaccess.arizona.edu")! as URL,
                                             options: [:], completionHandler: nil)
    }
    
    @IBAction func advisingButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://d2l.arizona.edu")! as URL,
                                             options: [:], completionHandler: nil)
    }
    
    @IBAction func d2lHelpButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://d2l.arizona.edu")! as URL,
                                             options: [:], completionHandler: nil)
    }
    
    @IBAction func uaBridgeButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://admissions.arizona.edu/how-to-apply/transfer/ua-bridge")! as URL,
                                             options: [:], completionHandler: nil)
    }
    
    @IBAction func requestInfoButtonPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://yuma.arizona.edu/request-info")! as URL,
                                             options: [:], completionHandler: nil)
    }
    

}
