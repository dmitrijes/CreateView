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
    
        let buttonHorizontal = "[buttonCreate(200)]"
        let buttonVertical = "V:|-20-[buttonCreate(50)]"
        let views = ["buttonCreate" : buttonCreate!]
        let buttonHorizontalConstrains = NSLayoutConstraint.constraints(withVisualFormat: buttonHorizontal, options: [], metrics: nil, views: views)
        let buttonVerticalConstrains = NSLayoutConstraint.constraints(withVisualFormat: buttonVertical, options: [], metrics: nil, views: views)
        allConstraintsForButton += buttonHorizontalConstrains
        allConstraintsForButton += buttonVerticalConstrains
        
        NSLayoutConstraint.activate(allConstraintsForButton)
    }

    @IBAction func createView(_ sender: UIButton) {
        
        let newView = UIView()
        newView.backgroundColor = UIColor.red
        newView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(newView)
        let newViewHorizontal = "|-[newView(1000)]-|"
        let newViewVertical = "|-[newView(1000)]-|"
        let newViews = ["newView" : newView]
        let newViewHorizontalConstrains = NSLayoutConstraint.constraints(withVisualFormat: newViewHorizontal, options: [], metrics: nil, views: newViews)
        let newViewVerticalConstrains = NSLayoutConstraint.constraints(withVisualFormat: newViewVertical, options: [], metrics: nil, views: newViews)
        allConstraintsForView += newViewHorizontalConstrains
        allConstraintsForView += newViewVerticalConstrains
        
        NSLayoutConstraint.activate(allConstraintsForView)
        
        
        count += 1
    }

}
