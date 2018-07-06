//
//  inputTextViewController.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/10.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit

class inputTextViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var aiueoTextField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aiueoTextField.delegate = self

    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        label.numberOfLines = 0 //折り返し
        
        label.text = aiueoTextField.text
        
        aiueoTextField.resignFirstResponder()
        
        return true
    }

    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
