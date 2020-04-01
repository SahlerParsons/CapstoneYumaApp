//
//  ScolarshipPDFViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 2/22/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit

class ScolarshipPDFViewController: UIViewController, UIWebViewDelegate {

   
  
    @IBOutlet weak var pdfView: UIWebView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pdfView.delegate = self
        
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "scholarships", ofType: "pdf")!)
        
        let request = URLRequest(url: path)
        pdfView.loadRequest(request)
        
//        let backgroundImage = UIImage.init(named: "UAYuma")
//               let backgroundImageView = UIImageView.init(frame: self.view.frame)
//
//               backgroundImageView.image = backgroundImage
//               backgroundImageView.contentMode = .scaleAspectFill
//               backgroundImageView.alpha = 1.0
//
//               self.view.insertSubview(backgroundImageView, at: 0)
        
        // Do any additional setup after loading the view.
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
