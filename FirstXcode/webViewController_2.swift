//
//  webViewController_1.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/11.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit

class webViewController_2: UIViewController, UIWebViewDelegate {

    
    @IBOutlet weak var indicater: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        webView.delegate = self
//        let url = URL(string: "domain_adress")
        let url = URL(string: "https://dry-beyond-92180.herokuapp.com/")
        let urlRequest = NSURLRequest(url: url!)
        webView.loadRequest(urlRequest as URLRequest)
    }

    //    load start
    func webViewDidStartLoad(_ webView: UIWebView) {
        indicater.isHidden = false
        indicater.startAnimating()
    }
    //    load finished
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicater.isHidden = true
        indicater.stopAnimating()
    }
    
    

    @IBAction func refresh(_ sender: Any) {
        webView.reload()
    }
    
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }
    
    
    @IBAction func next(_ sender: Any) {
        webView.goForward()
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
