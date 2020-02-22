//
//  LinksViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 2/21/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit
import SafariServices

class LinksViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
//    func showSafariVC(for url: String) {
//    guard let url = URL(string: url) else {
//        return
//        }
//
//        let safariVC = SFSafariViewController(url: url)
//        present(safariVC, animated: true)
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func link1Pressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://d2l.arizona.edu")! as URL,
                                  options: [:], completionHandler: nil)
    }
    
    @IBAction func link2Pressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://yuma.arizona.edu")! as URL,
                                  options: [:], completionHandler: nil)
    }
    
    @IBAction func link3Pressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://d2l.arizona.edu")! as URL,
                                  options: [:], completionHandler: nil)
    }
    
    @IBAction func link4Pressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://d2l.arizona.edu")! as URL,
                                  options: [:], completionHandler: nil)
    }
    
}
