//
//  webViewCollectionController.swift
//  FirstXcode
//
//  Created by toyokazu nichiga on 2018/06/10.
//  Copyright © 2018年 toyokazu nichiga. All rights reserved.
//

import UIKit
import WebKit

class webViewCollectionController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var indicater: UIActivityIndicatorView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
//        let url = URL(string: "domain_adress")
        let url = URL(string: "https://www.google.co.jp")
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
    
    
    @IBAction func next(_ sender: Any) {
        webView.goForward()
    }
    
    @IBAction func goBack(_ sender: Any) {
        webView.goBack()
    }
    
    @IBAction func refresh(_ sender: Any) {
        webView.reload()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
