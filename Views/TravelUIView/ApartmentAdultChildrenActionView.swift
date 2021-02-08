//
//  ApartmentAdultChildrenActionView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/7/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools
class ApartmentAdultChildrenActionView: UIView {
    let incrementView = IncrementView()
    let titleLabel = UILabel(text: "Apartment(s)", font: .systemFont(ofSize: 14,weight:.medium), textColor: .black, textAlignment: .center, numberOfLines: 1)
//
    let minusButton = UIButton(title: "-", titleColor: UIColor.rgb(red: 45, green: 101, blue: 173), font: .boldSystemFont(ofSize: 16), backgroundColor: .clear, target: nil, action: nil)

    let valueLabel = UILabel(text: "0", font: .boldSystemFont(ofSize: 16), textColor: .black, textAlignment: .center, numberOfLines: 1)

    let plusButton = UIButton(title: "+", titleColor: UIColor.rgb(red: 45, green: 101, blue: 173), font: .boldSystemFont(ofSize: 16), backgroundColor: .clear, target: nil, action: nil)
    
    init(type:Int){
        super.init(frame: .zero)
        backgroundColor = .white
        
        
        minusButton.layer.borderWidth = 2
        minusButton.layer.cornerRadius = 15
        minusButton.addTarget(self, action: #selector(decreaseItem), for: .touchUpInside)
        minusButton.tag = 0

        plusButton.layer.borderWidth = 2
        plusButton.layer.cornerRadius = 15
        plusButton.addTarget(self, action: #selector(addItem), for: .touchUpInside)
        plusButton.tag = 1
        
        
        stack(titleLabel.withHeight(40),
//              hstack(stack(minusLabel).withWidth(20),valueLabel.withWidth(20),plusLabel.withWidth(20),UIView()).withMargins(UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 10)).padLeft(20),
//            hstack(minusButton.withWidth(20),valueLabel,plusButton.withWidth(20),distribution:.fillEqually).withMargins(UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)),
            
//            hstack(incrementView,distribution:.fillEqually).withMargins(UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)),

            stack(incrementView),
            
            UIView()
//
              )
        
        
          
        
        if type == 0{
            titleLabel.text = "Apartment(s)"
        }else if type == 1{
            titleLabel.text = "Adult(s)"
        }else {
            titleLabel.text = "Children(s)"
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //change button values
    var intValue: Int = 0
    
 
    @objc func addItem(){
        var intValue = Int(self.valueLabel.text ?? "") ?? 0
        intValue += 1
        valueLabel.text = String(intValue)

    }

    @objc func decreaseItem(){
        var intValue = Int(self.valueLabel.text ?? "") ?? 0
        if intValue > 0{
            intValue -= 1
            valueLabel.text = String(intValue)
        }else {
            valueLabel.text = "0"
        }

    }
}
