//
//  imageViewController.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/10.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    var count = 0
    
    @IBOutlet weak var backImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 1

    }
    @IBAction func change(_ sender: Any) {
        
//       backImageView to back2jpg
        
        if(count == 0) {
            backImageView.image = UIImage(named: "back1.jpg")
            count = 1
        }else if(count == 1){
            backImageView.image = UIImage(named: "back2.jpg")
            count = 0
        }
        
        
    }
    
//    closingView
    @IBAction func close(sender: UIButton) {
        //nil => do nothing
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
