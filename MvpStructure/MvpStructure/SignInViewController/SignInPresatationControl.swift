//
//  SignInPresatationControl.swift
//  MvpStructure
//
//  Created by Urvish Patel on 18/06/17.
//  Copyright © 2017 Urvish Patel. All rights reserved.
//

import UIKit


class SignInPresatationControlImpl: SignInPresatationControl
{
    weak var delegate: SignInPresatationControlDelegate?
   
    
}
extension SignInPresatationControlImpl
{
    func viewDidLoad() {
        print("ViewDidLoad")
    }
}
