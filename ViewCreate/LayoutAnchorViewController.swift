//
//  LayoutAnchorViewController.swift
//  ViewCreate
//
//  Created by Dzmitry Fralou on 26.04.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import UIKit

class LayoutAnchorViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var buttonCreate: UIButton!
    private var topAnchorNewView : NSLayoutYAxisAnchor!
    private var buttonTopUpdate : NSLayoutConstraint!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonCreate.translatesAutoresizingMaskIntoConstraints = false
        
        buttonCreate.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonCreate.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        buttonCreate.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        buttonTopUpdate = buttonCreate.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20.0)
        buttonTopUpdate.isActive = true
    }

    
    @IBAction func createView(_ sender: UIButton) {
        buttonTopUpdate.isActive = false
        let newView = UIView()
        newView.backgroundColor = UIColor.red
        newView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(newView)
        
        newView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        newView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        newView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        if count == 0 {
            newView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        } else {
            newView.topAnchor.constraint(equalTo: topAnchorNewView, constant: 10.0).isActive = true
        }
        
        topAnchorNewView = newView.bottomAnchor
        buttonTopUpdate = buttonCreate.topAnchor.constraint(equalTo: topAnchorNewView, constant: 10.0)
        buttonTopUpdate.isActive = true
        
        scrollView.contentSize.height = CGFloat(buttonCreate.frame.maxY + 2*buttonCreate.frame.height + 20)
    
        count += 1
    }
    

    
}
