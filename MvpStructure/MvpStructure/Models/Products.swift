//
//  Products.swift
//  MvpStructure
//
//  Created by Urvish Patel on 17/06/17.
//  Copyright © 2017 Urvish Patel. All rights reserved.
//

import UIKit

class Products: NSObject {

    
    var productName:String = ""
    var productDescription:String = ""
    override init() {
        super.init();
        self.productName = ""
        self.productDescription = ""
        
    }
    init(withDictionary dict:[String:Any])
    {
        super.init();
        if let value = dict["name"] as? String
        {
            self.productName = value
        }
        if let value = dict["description"] as? String
        {
            self.productDescription = value
        }
    }
}
