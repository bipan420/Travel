//
//  ReceiptViewController.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/8/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools
let myHeadingFont = UIFont.boldSystemFont(ofSize: 18)
let myBigFont = UIFont.systemFont(ofSize: 16)
let myMediumFont = UIFont.systemFont(ofSize: 14)
let mySmallFont = UIFont.systemFont(ofSize: 12)
class ReceiptViewController: UIViewController {
//    let doneIconView = DoneIconView()
    let doneView = DoneView()
    let descriptionView = DescriptionView()
    let enjoyYourStayView = EnojyYourStayView()
    let okButtonView = OKButtonView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        descriptionView.layer.borderWidth = 1
        descriptionView.layer.borderColor = UIColor.lightGray.cgColor
        
        okButtonView.layer.cornerRadius = 20

        view.stack(
//            view.stack(doneIconView),
            view.stack(doneView.withSize(.init(width: view.frame.width, height: view.frame.width/2))),
            view.stack(descriptionView),
            view.stack(enjoyYourStayView),
            view.stack(okButtonView).padLeft(100).padRight(100),
            UIView()
        ).withMargins(UIEdgeInsets(top: 80, left: 0, bottom: 10, right: 0))
    }
    
}

//class DoneIconView: UIView {
//    let iconImage = UIImageView(image: UIImage(named: "checkmark"))
//    override init(frame: CGRect) {
//        super.init(frame:frame)
//        stack(iconImage)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

class DoneView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        stack(
            doneImage,
            doneLabel1,
            doneLabel2,
            doneLabel3
            
        ).withMargins(UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0))
//        layer.addSublayer(shapeLayer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let doneImage = UIImageView(image: UIImage(named: ""))
    let doneLabel1 = UILabel(text: "Your booking has been", font: .boldSystemFont(ofSize: 18), textColor: .black, textAlignment: .center, numberOfLines: 1)
    let doneLabel2 = UILabel(text: "Successfully done.", font: .boldSystemFont(ofSize: 18), textColor: .black, textAlignment: .center, numberOfLines: 1)
    let doneLabel3 = UILabel(text: "Please check your info below.", font: .boldSystemFont(ofSize: 18), textColor: .black, textAlignment: .center, numberOfLines: 1)
}

    
    
    class DescriptionView: UIView {
        override init(frame: CGRect) {
            super.init(frame:.zero)
            stack(
                headingLabel,
                stack(
                    addressLabel1,
                    addressLabel2,
                    addressLabel3
                ).withMargins(UIEdgeInsets(top: 5, left: 0, bottom: 10, right: 0)),
                
                hstack(
                    stack(checkInLabel,checkInDateLabel),
                    stack(checkOutLabel,checkOutDateLabel),
                    stack(apartmentLabel,apartmentNoLabel),
                    distribution: .equalSpacing
                ).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)),
                hstack(stack(phoneNoLabel,phoneNoLabel1),
                       stack(emailLabel,emailLabel1),distribution:.equalSpacing).withMargins(UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0))
                
            ).withMargins(UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        let headingLabel = UILabel(text: "CITY PREMIERE HOTEL APARTMENTS", font: myHeadingFont, textColor: myColor, textAlignment: .center, numberOfLines: 2)
        
        let addressLabel1 = UILabel(text: "Sheikh Zayed Road,", font: myMediumFont, textColor: .black, textAlignment: .center, numberOfLines: 1)
        let addressLabel2 = UILabel(text: "Near Business Bay Metro Staion", font: myMediumFont, textColor: .black, textAlignment: .center, numberOfLines: 1)
        let addressLabel3 = UILabel(text: "Dubai, UAE", font: myMediumFont, textColor: .black, textAlignment: .center, numberOfLines: 1)
        
        let checkInLabel = UILabel(text: "CHECK IN", font: .systemFont(ofSize: 16), textColor: .black, textAlignment: .natural, numberOfLines: 1)
        
        let checkInDateLabel = UILabel(text: "12 AUG 2020", font: myMediumFont, textColor: .black, textAlignment: .center, numberOfLines: 1)
        
        let checkOutLabel = UILabel(text: "CHECK OUT", font: myBigFont, textColor: .black, textAlignment: .natural, numberOfLines: 1)
        let checkOutDateLabel = UILabel(text: "12 AUG 2020", font: myMediumFont, textColor: .black, textAlignment: .center, numberOfLines: 1)
        
        let apartmentLabel = UILabel(text: "APARTMENT(S)", font: myBigFont, textColor: .black, textAlignment: .natural, numberOfLines: 1)
        
        let apartmentNoLabel = UILabel(text: "1", font: myMediumFont, textColor: .black, textAlignment: .center, numberOfLines: 1)
        
        
        let phoneNoLabel = UILabel(text: "PHONE NUMBER", font: myBigFont, textColor: .black, textAlignment: .natural, numberOfLines: 1)
        
        let phoneNoLabel1 = UILabel(text: "xxxxxxxxxxxx", font: myMediumFont, textColor: .black, textAlignment: .natural, numberOfLines: 1)
        
        let emailLabel = UILabel(text: "EMAIL ID", font: myBigFont, textColor: .black, textAlignment: .natural, numberOfLines: 1)
        
        let emailLabel1 = UILabel(text: "xxxxxxxxxxxxxx", font: myMediumFont, textColor: .black, textAlignment: .natural, numberOfLines: 1)
    }
    


class EnojyYourStayView: UIView {
    override init(frame: CGRect) {
        super.init(frame:frame)
        stack(
            stack(messageTextLabel).withMargins(UIEdgeInsets(top: 20, left: 30, bottom: 20, right: 30)),
            stack(enjoyLabel).withMargins(UIEdgeInsets(top: 10, left: 20, bottom: 20, right: 20))
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let messageTextLabel = UILabel(text: "Please check your email for the hotel confirmation. Display the same hotel confirmation to the reception upon your arrival", font: mySmallFont, textColor: .black, textAlignment: .center, numberOfLines: 3)
    
    let enjoyLabel = UILabel(text: "ENJOY YOUR STAY WITH US.", font: myHeadingFont, textColor: myColor, textAlignment: .center, numberOfLines: 2)
    
    
}


class OKButtonView: UIView {
    let okButton = UIButton(title: "OK", titleColor: .black)
   
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .orange
        okButton.layer.cornerRadius  = 15
        okButton.titleLabel?.font = .systemFont(ofSize: 30)
        
        stack(okButton)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
       
}


    




