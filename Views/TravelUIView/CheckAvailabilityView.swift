//
//  CheckAvailabilityView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/7/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools

class CheckAvailabilityView: UIView {
    let checkButton = UIButton(title: "CHECK AVAILABILITY", titleColor: .white)
    override init(frame: CGRect) {
        super.init(frame:.zero)
        backgroundColor = UIColor.rgb(red: 45, green: 101, blue: 173)
        checkButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        stack(checkButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
