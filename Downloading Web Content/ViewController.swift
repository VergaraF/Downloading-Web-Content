//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Fabian Vergara on 2016-05-17.
//  Copyright © 2016 fvergara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://www.stackoverflow.com")!
        
        /* /!\It downloads the whole website */
        self.webView.loadRequest(NSURLRequest(URL: url))
        
        
       /* /!\It downloads the HTML data from the website and displays it
         
         let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
            // will happen when task completes (closure)
            
            if let urlContent = data{
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_async(dispatch_get_main_queue(), {
                    self.webView.loadHTMLString(String(webContent), baseURL: nil)
                
                })
                
                
                print(webContent)
                
            }else{
                //show error message
            }
        }
        
        task.resume()*/
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

