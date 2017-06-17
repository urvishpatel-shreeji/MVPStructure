//
//  SignInViewController.swift
//  MvpStructure
//
//  Created by Urvish Patel on 18/06/17.
//  Copyright © 2017 Urvish Patel. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    
    fileprivate var presenter:SignInPresenter!
    fileprivate var presentationControl:SignInPresatationControlImpl!
    
}

extension SignInViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = SignInPresenterImpl.init(withPresentation: presentationControl)
        presentationControl.delegate = presenter;
        presenter.viewDidLoad();
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
