//
//  ViewController.swift
//  ViewCreate
//
//  Created by Дмитрий on 10.04.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonCreate: UIButton!
    @IBOutlet weak var scrolling: UIScrollView!
    private var count = 0
    var centerButton, buttonWidth, buttonHeight, buttonTop, newbuttonTop : NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCreate.translatesAutoresizingMaskIntoConstraints = false
        centerButton = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        buttonWidth = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.width, multiplier: 1, constant: 200)
        buttonHeight = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 50)
        buttonTop = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20)
        NSLayoutConstraint.activate([centerButton, buttonWidth, buttonHeight, buttonTop])
    }
    
    @IBAction func createView(_ sender: UIButton) {
        if count == 0 {
             NSLayoutConstraint.deactivate([buttonHeight, centerButton, buttonWidth, buttonTop])
        } else {
            NSLayoutConstraint.deactivate([newbuttonTop])
        }
        let newView = UIView()
        newView.translatesAutoresizingMaskIntoConstraints = false
        let centerHorizontalView = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        let newViewWidth = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.width, multiplier: 1, constant: 100)
        let newViewHeight = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 90)
        let newViewTop = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.top, multiplier: 1, constant: CGFloat(count*100 + 10))
        newView.backgroundColor = UIColor.gray
        count += 1
        newbuttonTop = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: newView, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1, constant: 20)
        scrolling.contentSize.height = CGFloat(count * 100 + 90)
        scrolling.addSubview(newView)
        NSLayoutConstraint.activate([centerHorizontalView, newViewWidth, newViewHeight, newViewTop, buttonHeight, centerButton, buttonWidth, newbuttonTop])
       
        
    }


}

