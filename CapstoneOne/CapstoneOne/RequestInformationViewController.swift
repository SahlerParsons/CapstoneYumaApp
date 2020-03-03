//
//  RequestInformationViewController.swift
//  CapstoneOne
//
//  Created by James Parsons on 2/26/20.
//  Copyright © 2020 INFV498. All rights reserved.
//

import UIKit
import MessageUI

class RequestInformationViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, MFMailComposeViewControllerDelegate, UITextFieldDelegate {


    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var lastTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var requestInformationButton: UIButton!
    
    @IBOutlet weak var contactMethodPicker: UIPickerView!
    var contactMethodChosen:String = "Call"
    var firstName:String = ""
    var lastName:String = ""
    var phone:String = ""
    var email:String = ""
    
    
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
        contactMethodChosen = pickerDataSource[row]
        
        
    }
    
    var pickerDataSource = ["Call", "Text", "Email"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactMethodPicker.delegate = self
        contactMethodPicker.dataSource = self
        
        firstTF.delegate = self
        lastTF.delegate = self
        phoneTF.delegate = self
        emailTF.delegate = self
        
//        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
//         view.addGestureRecognizer(tap)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        firstTF.resignFirstResponder()
        
        switch textField {
        case firstTF:
            lastTF.becomeFirstResponder()
        case lastTF:
            phoneTF.becomeFirstResponder()
        case phoneTF:
            emailTF.becomeFirstResponder()
        default:
            emailTF.resignFirstResponder()
        }
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
    @IBAction func requestButtonClicked(_ sender: Any) {
        
        firstName = firstTF.text!
        lastName = lastTF.text!
        phone = phoneTF.text!
        email = emailTF.text!
        
//     let alert = UIAlertController(title: (firstName + lastName + phone + email + contactMethodChosen), message: "bleah", preferredStyle: .alert)
//     alert.addAction(UIAlertAction(title: "yes", style: .default, handler: nil))
//     alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
//
//     self.present(alert, animated: true)
        
        sendEmail()
        

    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["wedeliverpizza@hotmail.com"])
            mail.setSubject(firstName + " " + lastName + " would like information about U of A Yuma")
            mail.setMessageBody(firstName + " " + lastName + " " + phone + " " + email + " would like information sent to them by " + contactMethodChosen, isHTML: false)
            present(mail, animated: true)

        } else {
            showSendMailErrorAlert()
        }
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
        func showSendMailErrorAlert() {
            let sendMailErrorAlert = UIAlertView(title: "Could not send mail", message: "Your device could not send email.  Please check your email settings and try again.", delegate: self, cancelButtonTitle: "OK")
            sendMailErrorAlert.show()
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

//---------------------------------------------------------------------//

//        let mailComposeViewController = configuredMailComposeViewController()
//        if MFMailComposeViewController.canSendMail() {
//            self.present(mailComposeViewController, animated: true, completion: nil)
//        } else {
//            self.showSendMailErrorAlert()
//        }

//    func configuredMailComposeViewController() -> MFMailComposeViewController {
//        let mailComposerVC = MFMailComposeViewController()
//        mailComposerVC.mailComposeDelegate = self
//
//        mailComposerVC.setToRecipients(["wedeliverpizza@hotmail.com"])
//        mailComposerVC.setSubject(firstName + " would like information about University of Arizona - Yuma")
//        mailComposerVC.setMessageBody(firstName + " " + lastName + " " + phone + " " + email + " would like information sent to them by " + contactMethodChosen, isHTML: false)
//
//        return mailComposerVC
//    }

//    func showSendMailErrorAlert() {
//        let sendMailErrorAlert = UIAlertView(title: "Could not send mail", message: "Your device could not send email.  Please check your email settings and try again.", delegate: self, cancelButtonTitle: "OK")
//        sendMailErrorAlert.show()
//    }

//    // MFMmailControllerDelegate Method
//    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
//        controller.dismiss(animated: true, completion: nil)
//    }

//func setupTextFields() {
//    let toolbar = UIToolbar(frame: CGRect(origin: .zero, size: .init(width: view.frame.size.width, height: 30)))
//
//    let flexspace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//    let doneBtn = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonAction))
//
//    toolbar.setItems([flexspace, doneBtn], animated: false)
//    toolbar.sizeToFit()
//
//    firstTF.inputAccessoryView = toolbar
//    lastTF.inputAccessoryView = toolbar
//    phoneTF.inputAccessoryView = toolbar
//    emailTF.inputAccessoryView = toolbar
//}
//
//@objc func doneButtonAction() {
//    self.view.endEditing(true)
//}
