//
//  countViewController.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/10.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit

class countViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    var resultBox = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func plus(_ sender: Any) {
        resultBox += 1
        countLabel.text =  String(resultBox)
    }
    
    @IBAction func minus(_ sender: Any) {
        resultBox -= 1
        countLabel.text = String(resultBox)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
    


}
