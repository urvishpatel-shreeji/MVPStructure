//
//  SignInPresenter.swift
//  MvpStructure
//
//  Created by Urvish Patel on 18/06/17.
//  Copyright © 2017 Urvish Patel. All rights reserved.
//

import UIKit

class SignInPresenterImpl:SignInPresenter
{
    
    fileprivate var presentationControl:SignInPresatationControl!
    init(withPresentation presentation:SignInPresatationControl)
    {
        self.presentationControl = presentation;
    }
}

extension SignInPresenterImpl
{
    func viewDidLoad() {
        print("ViewDidLoad")
    }
}
