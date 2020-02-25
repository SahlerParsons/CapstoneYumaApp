//
//  IndividualSemesterPlanViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 2/25/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit

class IndividualSemesterPlanViewController: UIViewController {

    
    @IBOutlet weak var individualSemesterPlanLabel: UILabel!
    
//    var chosenPlan:String = "Chosen Plan retrieved later"
    
    var chosenPlan:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    individualSemesterPlanLabel.text = chosenPlan
        

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
