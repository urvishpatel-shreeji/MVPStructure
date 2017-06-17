//
//  ListTableView.swift
//  MvpStructure
//
//  Created by Urvish Patel on 17/06/17.
//  Copyright © 2017 Urvish Patel. All rights reserved.
//

import UIKit
typealias BlockCellSelection = () -> Void

class ListTableView: UITableView,UITableViewDataSource,UITableViewDelegate
{

    var aryProducts:[Products] = []
        {
        didSet{
            self.delegate = self;
            self.dataSource = self
            self.reloadData();
        }
    }
    var cellSelection:BlockCellSelection?
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func setupTableView() -> Void
    {
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.aryProducts.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:CellUserDetails = (tableView.dequeueReusableCell(withIdentifier: "CellUserDetailsIdentifier") as? CellUserDetails)!
        cell.model = self.aryProducts[indexPath.row]
        if indexPath.row % 2 == 0
        {
            cell.blockSelection = {
                (value) in
                print("Block Get")
                
            }
        }
        
        return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.cellSelection != nil
        {
            self.cellSelection!()
            
        }
    }
}
