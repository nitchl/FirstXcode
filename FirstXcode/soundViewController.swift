//
//  soundViewController.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/11.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit
import AVFoundation

class soundViewController: UIViewController {


    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var imageView2: UIImageView!
    
    var audioPlayer : AVAudioPlayer!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        no image
        imageView2.isHidden = true
        
//        no label
        timeLabel.isHidden = true
        
//        try
        if let url = Bundle.main.url(forResource: "callMusic", withExtension: "mp3")  {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer.play()
            } catch {
                audioPlayer = nil
            }
        } else {
                   fatalError("URL is nil")
        }
    }

//catch the phone
    @IBAction func tap(_ sender: Any) {
        
//        calling active
        imageView2.isHidden = false
        timeLabel.isHidden = false
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerCountUp), userInfo: nil, repeats: true)
        
        playBabySound()
    }
    
    func playBabySound() {
        if let url = Bundle.main.url(forResource: "baby", withExtension: "mp3")  {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer.play()
            } catch {
                audioPlayer = nil
            }
        } else {
            fatalError("URL is nil")
        }
    }
    
    @objc func timerCountUp() {
        count += 1
        timeLabel.text = String(count)
    }
    
    
    
    
    
//    denied the phone
    @IBAction func deny(_ sender: Any) {
//        sound stop
        audioPlayer.stop()
//        cancel
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    



}
