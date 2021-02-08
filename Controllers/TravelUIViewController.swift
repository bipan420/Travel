//
//  TravelUIViewController.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/5/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools

class TravelUIViewController: UIViewController{
    
    
    let checkInDateView = CheckInCheckOutView(type: 0)
    let checkOutDateView = CheckInCheckOutView(type: 1)
    
    let apartmentOptionView = ApartmentAdultChildrenActionView(type:0)
    let adultOptionView = ApartmentAdultChildrenActionView(type:1)
    let childrenOptionView = ApartmentAdultChildrenActionView(type:2)
    
    let childrenAgeView = ChildrenAgeView()
    
    let checkAvailabilityView = CheckAvailabilityView()
    
    let ratesView = RatesView()
    
    let confirmButton = ConfirmButtonView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let backNavButton = UIBarButtonItem(title: "BACK", style: .plain, target: nil, action: nil)
        let rightNavMenuButton = UIBarButtonItem(title: "MENU", style: .plain, target: nil, action: nil)
        navigationItem.leftBarButtonItem = backNavButton
        navigationItem.rightBarButtonItem = rightNavMenuButton
        navigationController?.navigationBar.tintColor = .blue
        
        checkInDateView.layer.borderWidth = 1
        checkInDateView.layer.borderColor = UIColor.black.cgColor
        checkInDateView.layer.cornerRadius = 10
        
        checkOutDateView.layer.borderWidth = 1
        checkOutDateView.layer.borderColor = UIColor.black.cgColor
        checkOutDateView.layer.cornerRadius = 10
        
        apartmentOptionView.layer.borderWidth = 1
        apartmentOptionView.layer.borderColor = UIColor.black.cgColor
        apartmentOptionView.layer.cornerRadius = 10
        
        adultOptionView.layer.borderWidth = 1
        adultOptionView.layer.borderColor = UIColor.black.cgColor
        adultOptionView.layer.cornerRadius = 10
        
        childrenOptionView.layer.borderWidth = 1
        childrenOptionView.layer.borderColor = UIColor.black.cgColor
        childrenOptionView.layer.cornerRadius = 10
        
        childrenAgeView.layer.borderWidth = 1
        childrenAgeView.layer.borderColor = UIColor.black.cgColor
        childrenAgeView.layer.cornerRadius = 10
        
//        optionView.backgroundColor = .red
//        anotherView.backgroundColor = .yellow
        
        checkAvailabilityView.layer.cornerRadius = 10
        
        ratesView.layer.borderWidth = 1
        ratesView.layer.borderColor = UIColor.black.cgColor
        ratesView.layer.cornerRadius = 10
        
        confirmButton.layer.cornerRadius = 20
        confirmButton.confirmButton.addTarget(self, action: #selector(confirmPressed), for: .touchUpInside)
        
//        view.stack(scrollView)
        
        view.stack(
            view.hstack(checkInDateView.withSize(.init(width: view.frame.width/2 - 16, height: view.frame.width/3 - 10)),
                checkOutDateView.withSize(.init(width: view.frame.width/2 - 16, height: view.frame.width/3 - 10)),
                spacing : 16 ,
                alignment : .center).withMargins(UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)),
            
//            view.hstack(apartmentOptionView.withSize(.init(width: view.frame.width/3-10, height: 100))),
            view.hstack(apartmentOptionView,adultOptionView,childrenOptionView,spacing: 8,distribution:.fillEqually).withMargins(UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)).withHeight(100),
            
//            view.hstack(optionView,anotherView, spacing: 16, distribution: .fillEqually).withHeight(100),
        view.hstack(childrenAgeView.withHeight(150).withWidth(view.frame.width-20)).withMargins(UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)),
        
        view.hstack(checkAvailabilityView.withHeight(40)).withMargins(UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)),
        
        view.stack(ratesView).withMargins(UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)),
            
        
        view.stack(confirmButton).padLeft(100).padRight(100),
            
            UIView()
        )
        
        
       

        
//        view.addSubview(checkInDateView)
//        view.addSubview(checkOutDateView)
//
//        checkInDateView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: nil,padding: .init(top: 16, left: 16, bottom: 0, right: 0), size: .init(width: view.frame.width/2 - 32, height: 100))
//        checkOutDateView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: checkOutDateView.trailingAnchor, bottom: nil, trailing: view.trailingAnchor,padding: .init(top: 16, left: 16, bottom: 0, right: 16), size: .init(width: view.frame.width/2 - 32, height: 100))
        
        
    }
    
//    let scrollView: UIScrollView = {
//               let sv = UIScrollView()
//               sv.isScrollEnabled = true
//               return sv
//           }()
    
   
    @objc func confirmPressed(){
        let formVC = FormViewController()
        navigationController?.pushViewController(formVC, animated: true)
        
    }
   
 
    
}







