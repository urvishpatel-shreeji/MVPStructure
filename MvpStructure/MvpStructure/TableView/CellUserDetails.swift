//
//  CellUserDetails.swift
//  MvpStructure
//
//  Created by Urvish Patel on 17/06/17.
//  Copyright © 2017 Urvish Patel. All rights reserved.
//

import UIKit
typealias blockClick = (Products) -> Void
class CellUserDetails: UITableViewCell {

    @IBOutlet var lblProductName:UILabel!
    @IBOutlet var lblProductDescription:UILabel!
    var blockSelection:blockClick?
    var model:Products = Products()
        {
        didSet{
            lblProductName.text  = model.productName;
            lblProductDescription.text = model.productDescription;
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(CellUserDetails.lblProductName_Clicked(label:)))
        self.lblProductName.addGestureRecognizer(tapGesture);
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func lblProductName_Clicked(label:UILabel) -> Void
    {
        if blockSelection != nil
        {
            self.blockSelection!(model)
        }
    }
    
}
