//
//  SemesterPlanViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 2/21/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit

class SemesterPlanViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var coursePlanChosen:String = ""
    
    @IBOutlet weak var pickerChoiceLabel: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row] as String
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        coursePlanChosen = pickerDataSource[row]
        pickerChoiceLabel.text = coursePlanChosen
        
    }
    
    var pickerDataSource = ["Agricultural Technology Management", "Computer Science", "Cyber Defense and Forensics", "Cyber Threat Intelligence", "Engineering Management", "Family Studies & Human Development", "Food Safety", "Industrial Engineering", "Informatics", "Intelligence Studies", "Network Operations", "Reverse Engineering"]
    
    @IBOutlet weak var courseCataloguePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        courseCataloguePicker.delegate = self
        courseCataloguePicker.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.destination is IndividualSemesterPlanViewController
        {
            let vc = segue.destination as? IndividualSemesterPlanViewController
            vc?.chosenPlan = coursePlanChosen
        }
    }
 

}
