//
//  FormViewController.swift
//  TravelUI
//
//  Created by Bipan Bhatta on 2/6/21.
//  Copyright © 2021 Bipan Bhatta. All rights reserved.
//

import UIKit
import LBTATools
let myColor = UIColor.rgb(red: 45, green: 101, blue: 173)
let mylightColor = UIColor.rgb(red: 144, green: 189, blue: 245)
let myFont = UIFont.systemFont(ofSize: 16)
let myBoldFont = UIFont.boldSystemFont(ofSize: 18)

class FormViewController: UIViewController{
    let formView = FormView()
    override func viewDidLoad() {
        view.backgroundColor = .white
        navigationController?.title = "Form View"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .done, target: self, action: #selector(goToReceipt))
        
//        view.stack(scrollView.stack(formView))
        view.stack(scrollView)
        scrollView.stack(formView)
//        scrollView.addSubview(formView)
        
        
        
    }
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.isScrollEnabled = true
        return sv
    }()
    
    @objc func goToReceipt(){
        let receiptVC = ReceiptViewController()
        navigationController?.pushViewController(receiptVC, animated: true)
    }
    

}


