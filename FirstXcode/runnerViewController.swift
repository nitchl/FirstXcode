//
//  runnerViewController.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/10.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit

class runnerViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var runnerImageView: UIImageView!
    
    var imageArray = [UIImage]()
    
    var timer1 = Timer()
    var timer2 = Timer()
    var countUp = 0
    var updateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let image0 = UIImage(named: "dash0.png")
        let image1 = UIImage(named: "dash1.png")
        let image2 = UIImage(named: "dash2.png")
        let image3 = UIImage(named: "dash3.png")
        let image4 = UIImage(named: "dash4.png")
        let image5 = UIImage(named: "dash5.png")

//        imageArray = [
//            image0,
//            image1,
//            image2,
//            image3,
//            image4,
//            image5
//            ] as! [UIImage]
        
        imageArray = [image0!,image1!,image2!,image3!,image4!,image5!]
        
        runnerImageView.image = imageArray[0]
        
    }

    
    @IBAction func start(_ sender: Any) {
        
        timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(keikajikan), userInfo: nil, repeats: true)
        
        timer2 = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:#selector(updateImage), userInfo: nil, repeats: true)
        
    }
    

    @IBAction func stop(_ sender: Any) {
        timer1.invalidate()
        timer2.invalidate()
    }
    
//    put sec
    @objc func keikajikan() {
        countUp = countUp + 1
        countLabel.text = String(countUp)
        
    }
    
//    image logic
    @objc func updateImage() {
        if (updateCount > 5) {
            updateCount = 0
        }else{
            runnerImageView.image = imageArray[updateCount]
            updateCount = updateCount + 1
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
