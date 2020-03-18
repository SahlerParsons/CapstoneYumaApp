//
//  SanLuisMapViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 3/12/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit

class SanLuisMapViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var sanLuisMapImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scrollView.minimumZoomScale = 0.1
               self.scrollView.maximumZoomScale = 6.0
               self.scrollView.contentSize = self.sanLuisMapImage.frame.size
               self.scrollView.delegate = self
               self.scrollView.contentSize = CGSize(width: scrollView.contentSize.width, height: 2000)

        // Do any additional setup after loading the view.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
          return self.sanLuisMapImage
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
