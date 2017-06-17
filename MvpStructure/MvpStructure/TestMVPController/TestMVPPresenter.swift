//
//  TestMVPPresenter.swift
//  FairAnB
//
//  Created by Urvish Patel on 17/06/17.
//  Copyright © 2017 Operr Technologies, Inc. All rights reserved.
//

import UIKit

class TestMVPPresenterImpl:TestMVPPresenter
{
    fileprivate unowned let presentationControl: TestMVPPresentationControl
    
    var aryProductList:[Products] = [] {
        didSet{
            self.presentationControl.displayTableData(withModel: aryProductList)
        }
    }
    
    init(presentationControl: TestMVPPresentationControl)
    {
        self.presentationControl = presentationControl
    }
    
    
}

extension TestMVPPresenterImpl
{
    func viewDidLoad()
    {
        
        print("Presenter Impl :: ViewDidLoad")
        self.presentationControl.viewDidLoad()
        self.generateDummyData();
        
    }
    func viewDidLayoutSubviews()
    {
        
    }
    
}
extension TestMVPPresenterImpl
{
    func didTapToCollapseCalendar(startDate: Date, endDate: Date) {
        
    }
    func didSelectTableView(withModel product: Products) {
        print("\(product.productName)")
        
    }
}
extension TestMVPPresenterImpl
{
    func generateDummyData()
    {
        self.aryProductList = self.generateDummyArray();
    }
    func generateDummyArray() -> [Products]
    {
        var aryProduct:[Products] = []
        for i in 0...15
        {
            let dictTest:[String:Any] = ["name":"Name \(i)","description":"description \(i)"]
            let productModel:Products = Products.init(withDictionary: dictTest)
            aryProduct.append(productModel)
            
        }
        return aryProduct;
    }
}
