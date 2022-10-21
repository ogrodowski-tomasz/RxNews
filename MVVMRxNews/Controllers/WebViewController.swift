//
//  WebViewController.swift
//  MVVMRxNews
//
//  Created by Tomasz Ogrodowski on 21/10/2022.
//

import Foundation
import UIKit
import WebKit

class WebViewController: UIViewController {
    
    private var webView: WKWebView!
    
    private var url: URL
    
    init(url: URL) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Article"
        
        webView.load(URLRequest(url: url))
    }
    
    override func loadView() {
        webView = WKWebView()
        self.view = webView
    }
    
    
}
