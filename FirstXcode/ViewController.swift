//
//  ViewController.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/05.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    
    @IBAction func buttonTapped(sender: UIButton){
        myLabel.text = "こんちは、世界"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "このボタンを押すと？"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

