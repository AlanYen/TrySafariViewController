//
//  ViewController.swift
//  TrySafariViewController
//
//  Created by AlanYen on 2016/3/16.
//  Copyright © 2016年 17Life. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    var urlString : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        urlString = "http://www.17life.com"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openInSafari(sender: AnyObject) {
        
        let url = NSURL(string: self.urlString)!
        UIApplication.sharedApplication().openURL(url)
    }
    
    @IBAction func openWithSafariVC(sender: AnyObject) {
        
        let svc = SFSafariViewController(URL: NSURL(string: urlString)!)
        svc.delegate = self
        self.presentViewController(svc, animated: true, completion: nil)
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {

        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}