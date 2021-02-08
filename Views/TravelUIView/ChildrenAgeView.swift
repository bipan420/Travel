//
//  ChildrenAgeView.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/7/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools

class ChildrenAgeView: UIView {
    let incrementView = IncrementView()
    let incrementView1 = IncrementView()
    let incrementView2 = IncrementView()
    let titleLabel = UILabel(text: "Age of Children(s)", font: .systemFont(ofSize: 14, weight: .medium), textColor: .black, textAlignment: .left, numberOfLines: 1)
    let zeroToSix = UILabel(text: "0 - 6 years", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .center, numberOfLines: 1)
    let sevenToEleven = UILabel(text: "7 - 11 years", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .center, numberOfLines: 1)
    
    let twelveAndAbove = UILabel(text: "12 years & above", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .center, numberOfLines: 1)
    
    let minusButton = UIButton(title: "-", titleColor: .blue)
    let numberLabel = UILabel(text: "0", font: .systemFont(ofSize: 12, weight: .medium), textColor: .black, textAlignment: .center, numberOfLines: 1)
    let plusButton = UIButton(title: "+", titleColor: .blue)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        backgroundColor = .white
        stack(
            titleLabel.withHeight(40),
            hstack(zeroToSix,UIView(),incrementView).withMargins(UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 0)),
            hstack(sevenToEleven,UIView(),incrementView1).withMargins(UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 0)),
            hstack(twelveAndAbove,UIView(),incrementView2).withMargins(UIEdgeInsets(top: 0, left: 0, bottom: 5, right: 0)),
            UIView()).padLeft(10)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
