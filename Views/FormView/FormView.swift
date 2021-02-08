//
//  FormView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/7/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
class FormView: UIView {
    var radioTitleButtons=[UIButton]()
    var radioSmokingButtons = [UIButton]()
    var radioPaymentButtons = [UIButton]()
    override init(frame: CGRect) {
        super.init(frame:frame)
        let introTitle = createBoldLabel(text: "Title")
        let titleMr = createLabel(text: "Mr.")
        let titleMrs = createLabel(text: "Mrs.")
        let titleMs = createLabel(text: "Ms.")
        let titleMiss = createLabel(text: "Miss")
        
        
//        var radioButtons = [UIButton]()
        let mrButton = createTitleRadioButton( normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioTitleButtons.append(mrButton)
        let mrsButton = createTitleRadioButton( normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioTitleButtons.append(mrsButton)
        let msButton = createTitleRadioButton( normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioTitleButtons.append(msButton)
        let missButton = createTitleRadioButton( normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioTitleButtons.append(missButton)
        
        let firstName = createBoldLabel(text: "First Name")
        let fnameTextField = createTextField()
        
        let lastName = createBoldLabel(text: "Last Name")
        let lnameTextField = createTextField()
        
        let emailId = createBoldLabel(text: "Email ID")
        let emailTexdField = createTextField()
        
        let mobileNo = createBoldLabel(text: "Mobile Number")
        let mobilNoTextField = createTextField()
        
        let country = createBoldLabel(text: "Country")
        let countryTextField = createTextField()
        
        let city = createBoldLabel(text: "City")
        let cityTextField = createTextField()
        
        
        
        
        // Smoking preference
        let smokingPref = createBoldLabel(text: "Smoking Preference")
        
        let smokingLabel = createLabel(text: "Smoking")
        let smokingButton = createSmokingRadioButton(normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioSmokingButtons.append(smokingButton)
        
        let nonSmokingLabel = createLabel(text: "Non Smoking")
        let nonSmokingButton = createSmokingRadioButton(normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioSmokingButtons.append(nonSmokingButton)
        
        
        
        
        //Payment Method
        let paymentMethod = createBoldLabel(text: "Payment Method")
        
        let cashLabel = createLabel(text: "Cash on Arrival")
        let cashButton = createPaymentRadioButton(normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioPaymentButtons.append(cashButton)
        
        let paymentLinkLabel = createLabel(text: "Payment Link")
        let paymentLinkButton = createPaymentRadioButton(normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioPaymentButtons.append(paymentLinkButton)
        
        let creditCardLabel = createLabel(text: "Credit Card")
        let creditCardButton = createPaymentRadioButton(normalImage: "radioUnselected", selectedImage: "radioSelected")
        radioPaymentButtons.append(creditCardButton)
        
        
        
        stack(
            personalInfoLabel,
            hstack(
                hstack(introTitle),
                
                hstack(hstack(titleMr,mrButton),
                       hstack(titleMrs,mrsButton),
                       hstack(titleMs,msButton),
                       hstack(titleMiss,missButton),spacing: 25),
                UIView(),
                spacing: 30
                ).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 10)),
            stack(firstName).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(fnameTextField).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(lastName).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(lnameTextField).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(emailId).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(emailTexdField).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(mobileNo).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(mobilNoTextField).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(country).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(countryTextField).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(city).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(cityTextField).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            stack(smokingPref).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)),
            hstack(hstack(smokingButton,smokingLabel),hstack(nonSmokingButton,nonSmokingLabel)),
            paymentMethod,
            hstack(hstack(cashButton,cashLabel),hstack(paymentLinkButton,paymentLinkLabel),hstack(creditCardButton,creditCardLabel))
        ).withMargins(UIEdgeInsets(top: 12, left: 12, bottom: 0, right: 12))
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let personalInfoLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Personal Information"
        lbl.textColor = myColor
        lbl.font = myBoldFont
        return lbl
        
    }()
    

    
    let titleMr: UILabel = {
        let lbl = UILabel()
        lbl.text = "Mr."
        lbl.textColor = myColor
        lbl.font = myFont
        return lbl
    }()
    
    func createLabel(text:String) -> UILabel {
        let myLabel = UILabel()
               myLabel.text = text
               myLabel.font = myFont
               myLabel.textColor = myColor
               return myLabel
    }
    
    func createBoldLabel(text: String) -> UILabel {
       let boldLabel = UILabel()
        boldLabel.text = text
        boldLabel.font = myBoldFont
        boldLabel.textColor = myColor
        return boldLabel
    }
    
    func createTextField()->UITextField {
        let textField = UITextField()
        textField.backgroundColor = mylightColor
        textField.layer.cornerRadius = 5
        textField.textColor = myColor
        textField.borderStyle = .roundedRect
        textField.withHeight(40)
        return textField
    }
    
    func createTitleRadioButton(normalImage:String,selectedImage:String) -> UIButton{
        let bt = UIButton()
        bt.setTitleColor(myColor, for: .normal)
//        bt.setTitle(title, for: .normal)
        bt.setImage(UIImage(named: normalImage), for: .normal)
        bt.setImage(UIImage(named: selectedImage), for: .selected)
        bt.addTarget(self, action: #selector(radioTitleAction), for: .touchUpInside)
        return bt
    }
    
    
        func createSmokingRadioButton(normalImage:String,selectedImage:String) -> UIButton{
            let bt = UIButton()
            bt.setTitleColor(myColor, for: .normal)
    //        bt.setTitle(title, for: .normal)
            bt.setImage(UIImage(named: normalImage), for: .normal)
            bt.setImage(UIImage(named: selectedImage), for: .selected)
            bt.addTarget(self, action: #selector(radioSmokingAction), for: .touchUpInside)
            return bt
        }
    
        func createPaymentRadioButton(normalImage:String,selectedImage:String) -> UIButton{
            let bt = UIButton()
            bt.setTitleColor(myColor, for: .normal)
    //        bt.setTitle(title, for: .normal)
            bt.setImage(UIImage(named: normalImage), for: .normal)
            bt.setImage(UIImage(named: selectedImage), for: .selected)
            bt.addTarget(self, action: #selector(radioPaymentAction), for: .touchUpInside)
            return bt
        }
    
       
    
    @objc func radioTitleAction(sender:UIButton!){
        for button in radioTitleButtons {
            button.isSelected  = false
        }
        sender.isSelected = true
    }
    
    @objc func radioSmokingAction(sender:UIButton!){
           for button in radioSmokingButtons {
               button.isSelected  = false
           }
           sender.isSelected = true
       }
    
    @objc func radioPaymentAction(sender:UIButton!){
           for button in radioPaymentButtons {
               button.isSelected  = false
           }
           sender.isSelected = true
       }
    
}
