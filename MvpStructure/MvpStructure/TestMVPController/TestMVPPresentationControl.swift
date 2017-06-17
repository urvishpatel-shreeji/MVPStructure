//
//  TestMVPPresenterControl.swift
//  FairAnB
//
//  Created by Urvish Patel on 17/06/17.
//  Copyright © 2017 Operr Technologies, Inc. All rights reserved.
//

import UIKit

class TestMVPPresentationControlImpl:NSObject,TestMVPPresentationControl
{

    @IBOutlet var lblTest:UILabel!
    @IBOutlet var tblTest:ListTableView!
    
    weak var delegate: TestMVPPresentationControlDelegate?
    
    
}


extension TestMVPPresentationControlImpl
{
    func viewDidLoad()
    {
        print("Presentation Control Impl :: ViewDidLoad")
        
        self.lblTest.text = "Testing a task"
    }
    func viewDidLayoutSubviews() {
        
    }
}
extension TestMVPPresentationControlImpl
{
    func displayTableData(withModel product: [Products])
    {
        self.tblTest.aryProducts = product;
        self.tblTest.cellSelection = { (value) in
            print("Cell Selection")
            self.delegate?.didSelectTableView(withModel: value)
        }
    }
}
