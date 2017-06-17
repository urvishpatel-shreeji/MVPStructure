//
//  TestMVPViewController.swift
//  FairAnB
//
//  Created by Urvish Patel on 17/06/17.
//  Copyright © 2017 Operr Technologies, Inc. All rights reserved.
//

import UIKit

class TestMVPViewController: UIViewController
{

    static var sceneStoryboard: UIStoryboard = UIStoryboard(name: "Dashboard", bundle: nil)
    
    fileprivate var presenter: TestMVPPresenter!
    @IBOutlet fileprivate var presentationControl: TestMVPPresentationControlImpl!

}

extension TestMVPViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        print("ViewController :: ViewDidLoad");
        
        presenter = TestMVPPresenterImpl.init(presentationControl: presentationControl)
        presentationControl.delegate = presenter
        presenter.viewDidLoad();
        
    }
}
