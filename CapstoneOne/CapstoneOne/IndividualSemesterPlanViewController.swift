//
//  IndividualSemesterPlanViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 2/25/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit
import PDFKit

class IndividualSemesterPlanViewController: UIViewController {

    
    @IBOutlet weak var individualSemesterPlanLabel: UILabel!
   
    
    
    var chosenPlan:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if chosenPlan == "" {
            chosenPlan = "Agricultural Technology Management"
        }
        
    individualSemesterPlanLabel.text = chosenPlan
        
        let pdfView = PDFView(frame: self.view.bounds)
        pdfView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(pdfView)
        pdfView.autoScales = true
        
        let fileURL = Bundle.main.url(forResource: chosenPlan, withExtension: "pdf")
        pdfView.document = PDFDocument(url: fileURL!)
        
//        let alert = UIAlertController(title: "Chosen Plan Alert", message: "hi", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: chosenPlan, style: .default, handler: nil))
//        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
//        
//        self.present(alert, animated: true)
               
//               let path = URL(fileURLWithPath: Bundle.main.path(forResource: "scholarships", ofType: "pdf")!)
//
//               let request = URLRequest(url: path)
        
        
        

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
