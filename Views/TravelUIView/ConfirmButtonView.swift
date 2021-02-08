//
//  ConfirmButtonView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/7/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools

class ConfirmButtonView: UIView {
    let confirmButton = UIButton(title: "CONFIRM", titleColor: .black)
   
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .orange
        
//        confirmButton.layer.cornerRadius = 15
        confirmButton.titleLabel?.font = .systemFont(ofSize: 30)
        stack(confirmButton)
//        confirmButton.addTarget(self, action: #selector(confirmClicked), for: .touchUpInside)
//
    }
    
//    @objc confirmedClicked(){
        //navigationController
//
//    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
       
}
