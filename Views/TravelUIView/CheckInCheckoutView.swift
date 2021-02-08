//
//  CheckInCheckoutView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/7/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools
class CheckInCheckOutView : UIView{
    
    let titleLabel = UILabel(text: "Check In Date", font: .systemFont(ofSize: 18, weight : .bold), textColor: .white, textAlignment: .center, numberOfLines: 1)

    let dayLabel = UILabel(text: "14", font: .systemFont(ofSize: 44, weight: .bold), textColor: .black, textAlignment: .natural, numberOfLines: 1)
    let weekDayLabel = UILabel(text: "SATURDAY", font: .systemFont(ofSize: 16, weight: .medium), textColor: UIColor.rgb(red: 242, green: 176, blue: 34), textAlignment: .natural, numberOfLines: 1)
    let monthLabel = UILabel(text: "AUG", font: .systemFont(ofSize: 18, weight: .medium), textColor: .black, textAlignment: .natural, numberOfLines: 1)
    init(type: Int) {
        super.init(frame: .zero)
        backgroundColor = .white
        stack(
            titleLabel.withHeight(35),
            hstack(stack(dayLabel).padLeft(20),
                   stack(weekDayLabel,monthLabel).padRight(20)
            ).withMargins(UIEdgeInsets(top: 24, left: 10, bottom: 24, right: 0)),
            UIView()
        )
        titleLabel.backgroundColor = UIColor.rgb(red: 45, green: 101, blue: 173)
//        titleLabel.layer.cornerRadius = 10
        
        if type == 0 {
            titleLabel.text = "Check In Date"
            dayLabel.text = "14"
            weekDayLabel.text = "SATURDAY"
            monthLabel.text = "AUG"
        }else{
            titleLabel.text = "Check Out Date"
            dayLabel.text = "23"
            weekDayLabel.text = "MONDAY"
            monthLabel.text = "AUG"
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
