//
//  IncrementView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/6/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools

class IncrementView: UIView {
    
    let minusButton = UIButton(title: "-", titleColor: UIColor.rgb(red: 45, green: 101, blue: 173), font: .boldSystemFont(ofSize: 16), backgroundColor: .clear, target: nil, action: #selector(decreaseItem))
    
    let plusButton = UIButton(title: "+", titleColor: UIColor.rgb(red: 45, green: 101, blue: 173), font: .boldSystemFont(ofSize: 16), backgroundColor: .clear, target: self, action: #selector(addItem))
    
    let valueLabel: UILabel = {
        let pl = UILabel()
        pl.textAlignment = .center
        pl.textColor = .black
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.font = UIFont.boldSystemFont(ofSize: 16)
        pl.text = "0"
        return pl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        minusButton.layer.borderWidth = 2
        minusButton.layer.cornerRadius = 15
        plusButton.layer.borderWidth = 2
               plusButton.layer.cornerRadius = 15
//        stack(
//            hstack(minusLabel,valueLabel,plusLabel).withMargins(UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
//            )
        
        
        hstack(minusButton,valueLabel,plusButton,distribution: .fillEqually).padLeft(10).padRight(10)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
