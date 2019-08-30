//
//  DetailViewController.swift
//  NewsReader
//
//  Created by 前川 on 2019/08/31.
//  Copyright © 2019 前川晃一郎. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!
    
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {
            let request = URLRequest(url: url)
            self.webview.load(request)
        }
    }
}
