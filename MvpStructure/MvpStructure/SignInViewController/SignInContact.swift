//
//  SignInContact.swift
//  MvpStructure
//
//  Created by Urvish Patel on 18/06/17.
//  Copyright © 2017 Urvish Patel. All rights reserved.
//

import UIKit

protocol SignInPresenter: class, SignInPresatationControlDelegate
{
    func viewDidLoad()
    
}

protocol SignInPresatationControl:class
{
    func viewDidLoad()
    
}

protocol SignInPresatationControlDelegate:class
{
    
}
