//
//  RatesView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/7/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import Foundation
import UIKit
import LBTATools

class RatesView: UIView {
    
    let ratesHeadingLabel = UILabel(text: "RATES PER NIGHT", font: .systemFont(ofSize: 16, weight : .bold), textColor: UIColor.rgb(red: 45, green: 101, blue: 173), textAlignment: .center, numberOfLines: 1)
    let apartmentSegments = UISegmentedControl(items: ["APARTMENT 1", "APARTMENT 2"])
    
    
    
    let stdOneBed = UILabel(text: "Standard 1 Bedroom", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .left, numberOfLines: 1)
    let stdOneBedPrice = UILabel(text: "300 AED", font: .systemFont(ofSize: 12, weight : .medium), textColor: .blue, textAlignment: .right, numberOfLines: 1)
    
    
    let stdOneBedBreakfast = UILabel(text: "Standard 1 Bedroom with Breakfast", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .left, numberOfLines: 1)
    let stdOneBedBreakfastPrice = UILabel(text: "446 AED", font: .systemFont(ofSize: 12, weight : .medium), textColor: .blue, textAlignment: .right, numberOfLines: 1)
    
//    let stdOneBed = UILabel(text: "Deluxe 1 Bedroom", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .left, numberOfLines: 1)
//    let stdOneBed = UILabel(text: "Standard 1 Bedroom with Breakfast", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .left, numberOfLines: 1)
    
    
    override init(frame: CGRect){
        super.init(frame: .zero)
        backgroundColor = .white
        ratesHeadingLabel.backgroundColor = .white
        ratesHeadingLabel.layer.borderWidth = 2
        ratesHeadingLabel.layer.borderColor = UIColor.rgb(red: 144, green: 189, blue: 245).cgColor
        ratesHeadingLabel.layer.cornerRadius = 10
        
        apartmentSegments.selectedSegmentIndex = 0
        apartmentSegments.layer.cornerRadius = 5.0
        apartmentSegments.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .selected)
        apartmentSegments.selectedSegmentTintColor = UIColor.rgb(red: 45, green: 101, blue: 173)
        apartmentSegments.backgroundColor = UIColor.rgb(red: 144, green: 189, blue: 245)
        apartmentSegments.addTarget(self, action:#selector(changeApartment(sender:)), for: .valueChanged)
        apartmentSegments.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.rgb(red: 45, green: 101, blue: 173)], for: .normal)
        
        stack(
            stack(ratesHeadingLabel).withMargins(UIEdgeInsets(top: 10, left: 10, bottom: 5, right: 10)).padLeft(100).padRight(100),
            stack(apartmentSegments).withMargins(UIEdgeInsets(top: 10, left: 10, bottom: 5, right: 10)),
            hstack(stdOneBed,stdOneBedPrice).withMargins(UIEdgeInsets(top: 10, left: 10, bottom: 5, right: 10)),
            hstack(stdOneBedBreakfast,stdOneBedBreakfastPrice).withMargins(UIEdgeInsets(top: 10, left: 10, bottom: 5, right: 10)),
            UIView())
        
    }
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    fileprivate func loadApartmentDetails(oneBed:Int,oneBedBreakfast:Int){
        stdOneBedPrice.text = "\(oneBed) AED"
        stdOneBedBreakfastPrice.text = "\(oneBedBreakfast) AED"
    }
    
    @objc fileprivate func changeApartment(sender: UISegmentedControl){
        switch sender.selectedSegmentIndex {
        case 0 :
            print("first selected")
            loadApartmentDetails(oneBed: 400, oneBedBreakfast: 500)
        case 1 :
            print("Second selected")
            loadApartmentDetails(oneBed: 600, oneBedBreakfast: 700)
        default:
            print("Error")
        }
        
    }
}
