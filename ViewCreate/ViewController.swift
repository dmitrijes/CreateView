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
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func createView(_ sender: UIButton) {
        
        let newView = UIView()
        //frame: CGRect(x: 10, y: count*10, width: 200, height: 90)
        
        let res = count*100
        let centerHorizontal = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        let newViewWidth = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.width, multiplier: 1, constant: 100)
        let newViewHeight = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 90)
        let newViewTop = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.topMargin, multiplier: 1, constant: CGFloat(10 + res))
        count += 1
        
        
        
        newView.backgroundColor = UIColor.gray
        newView.translatesAutoresizingMaskIntoConstraints = false
        scrolling.contentSize.height = CGFloat(count * 100 + 90)
        scrolling.addSubview(newView)
        NSLayoutConstraint.activate([centerHorizontal, newViewWidth, newViewHeight, newViewTop])
        //buttonCreate.translatesAutoresizingMaskIntoConstraints = false
        //let firstButtom = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.topMargin, relatedBy: NSLayoutRelation.greaterThanOrEqual, toItem: newView, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 110)
        //let secondButtom = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.height, multiplier: 1, constant: 150)
        
        
        //NSLayoutConstraint.activate([firstButtom, secondButtom])
        view.addSubview(scrolling)
        
    }


}

