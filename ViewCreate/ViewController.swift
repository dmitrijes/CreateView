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
       
        scrolling.translatesAutoresizingMaskIntoConstraints = false
        buttonCreate.translatesAutoresizingMaskIntoConstraints = false
        
        let leftSide = NSLayoutConstraint(item: scrolling, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 0)
        let topSide = NSLayoutConstraint(item: scrolling, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 8)
        let rightSide = NSLayoutConstraint(item: scrolling, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.right, multiplier: 1, constant: 0)
        let bottomSide = NSLayoutConstraint(item: scrolling, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 0)
        
        view.addConstraints([leftSide, topSide, rightSide, bottomSide])
        
        let buttomCenter = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        let buttomTop = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: scrolling, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 20)
        let buttomWidth = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 150)
        let buttomHeight = NSLayoutConstraint(item: buttonCreate, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 50)
        
        
        scrolling.addConstraints([buttomCenter, buttomTop, buttomWidth, buttomHeight])
    }
    
    @IBAction func createView(_ sender: UIButton) {
        count += 1
        let newView = UIView(frame: CGRect(x: 10, y: count*100, width: 200, height: 90))
        
        newView.backgroundColor = UIColor.gray
        scrolling.contentSize.height = CGFloat(count * 100 + 90)
        scrolling.addSubview(newView)
        view.addSubview(scrolling)
    }


}

