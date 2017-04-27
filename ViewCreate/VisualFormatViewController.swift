//
//  VisualFormatViewController.swift
//  ViewCreate
//
//  Created by Dzmitry Fralou on 26.04.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import UIKit

class VisualFormatViewController: UIViewController {

    @IBOutlet weak var buttonCreate: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    private var count = 0
    var allConstraintsForButton = [NSLayoutConstraint]()
    var allConstraintsForView = [NSLayoutConstraint]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCreate.translatesAutoresizingMaskIntoConstraints = false
    
        let views = ["buttonCreate" : buttonCreate!]
        let buttonHorizontalConstrains = NSLayoutConstraint.constraints(withVisualFormat: "|-[buttonCreate(200)]-|", options: [], metrics: nil, views: views)
        let buttonVerticalConstrains = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[buttonCreate(50)]", options: [], metrics: nil, views: views)
        allConstraintsForButton += buttonHorizontalConstrains
        allConstraintsForButton += buttonVerticalConstrains
        
        NSLayoutConstraint.activate(allConstraintsForButton)
    }

    @IBAction func createView(_ sender: UIButton) {
         NSLayoutConstraint.deactivate(allConstraintsForButton)
        let newView = UIView()
    
        newView.backgroundColor = UIColor.red
        newView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(newView)
    
        let newViews = ["newView" : newView]
        let newViewHorizontalConstrains = NSLayoutConstraint.constraints(withVisualFormat: "|-[newView(100)]-|", options: [], metrics: nil, views: newViews)
        let newViewVerticalConstrains = NSLayoutConstraint.constraints(withVisualFormat: "|-20-[newView(100)]-|", options: [], metrics: nil, views: newViews)
        allConstraintsForView += newViewHorizontalConstrains
        allConstraintsForView += newViewVerticalConstrains
        
        NSLayoutConstraint.activate(allConstraintsForView)
        
        
        count += 1
    }

}
