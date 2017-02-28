//
//  ViewController.swift
//  ios-uikit-uiwebview-demo
//
//  Created by k_motoyama on 2017/03/01.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        setupFrame()
        setupLoadRequest()
        getIsLoading()
    }

    // webviewのサイズを設定する
    public func setupFrame(){
        webView.frame = self.view.bounds
    }
    
    // ロード中かどうかの判別を取得する
    public func getIsLoading(){
        print(webView.isLoading)
    }
    
    // 表示するURLを設定する
    public func setupLoadRequest(){
        webView.loadRequest(URLRequest(url: URL(string: "https://www.google.co.jp/")!))
    }
    
    // ロードを停止する
    public func doStopLoading(){
        webView.stopLoading()
    }
    
    // リロードする
    public func doReload(){
        webView.reload()
    }

}

// MARK: UIWebViewDelegate
extension ViewController: UIWebViewDelegate {
    
    // ロード開始時に呼び出される
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("didStart")
    }
    
    // ロード終了時に呼び出される
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("didFinish")
    }
    
    
    
}
