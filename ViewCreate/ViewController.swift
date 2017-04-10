//
//  ViewController.swift
//  ViewCreate
//
//  Created by Дмитрий on 10.04.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrolling: UIScrollView!
    private var count = 0
    
    @IBAction func createView(_ sender: UIButton) {
        count += 1
        let newView = UIView(frame: CGRect(x: 100, y: count*100, width: 200, height: 90))
        newView.backgroundColor = UIColor.gray
        scrolling.contentSize.height = CGFloat(count * 100 + 90)
        scrolling.addSubview(newView)
        view.addSubview(scrolling)
    }


}

