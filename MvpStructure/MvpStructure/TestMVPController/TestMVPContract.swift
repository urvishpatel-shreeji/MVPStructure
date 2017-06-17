//
//  TestMVPContract.swift
//  FairAnB
//
//  Created by Urvish Patel on 17/06/17.
//  Copyright © 2017 Operr Technologies, Inc. All rights reserved.
//

import UIKit


protocol TestMVPPresenter: class, TestMVPPresentationControlDelegate {
    
    func viewDidLoad()
    func viewDidLayoutSubviews()
    
}
protocol TestMVPPresentationControl:class
{
    func viewDidLoad()
    func viewDidLayoutSubviews()
    func displayTableData(withModel product:[Products]) -> Void
    
}
protocol TestMVPPresentationControlDelegate: class
{
    
    func didTapToCollapseCalendar(startDate: Date, endDate: Date)
    func didSelectTableView(withModel product:Products) -> Void
}



