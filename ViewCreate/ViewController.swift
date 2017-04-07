//
//  ViewController.swift
//  ViewCreate
//
//  Created by Дмитрий on 07.04.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBAction func CreateView(_ sender: UIButton) {
        count += 1
        let newView = UIView(frame: CGRect(x: 100, y: count*100, width: 200, height: 90))
        newView.backgroundColor = UIColor.red
        view.addSubview(newView)
    }

}

