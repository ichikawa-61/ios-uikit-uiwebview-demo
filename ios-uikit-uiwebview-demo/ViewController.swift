//
//  ViewController.swift
//  ios-uikit-uiwebview-demo
//
//  Created by k_motoyama on 2017/03/01.
//  Copyright © 2017年 k_moto. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        setupFrame()
        setupLoadRequest()
        getIsLoading()
    }

    // MARK: - IBActions

    @IBAction private func didTapGoForwardButton(_ sender: UIBarButtonItem) {

        if webView.canGoForward {
            webView.goForward()
        } else {
            print("goForward出来ません")
        }
    }

    @IBAction func didTapGoBackButton(_ sender: UIBarButtonItem) {

        if webView.canGoBack {
            webView.goBack()
        } else {
            print("goBack出来ません")
        }
    }

    @IBAction func didTapReloadButton(_ sender: UIBarButtonItem) {
        doReload()
    }

    @IBAction func didTapStopButton(_ sender: UIBarButtonItem) {
        if webView.isLoading {
            doStopLoading()
        } else {
            print("ロード中ではありません")
        }
    }

    /// JavaScriptを実行する
    @IBAction func didTapActionButton(_ sender: UIBarButtonItem) {

        // JavaScript実行
        let body = webView.stringByEvaluatingJavaScript(from: "document.body.innerHTML")
        print(body ?? "JavaScript実行失敗")
    }
}


// MARK: - private
private extension ViewController {

    // webviewのサイズを設定する
    func setupFrame(){
        webView.frame = view.bounds
    }

    // ロード中かどうかの判別を取得する
    func getIsLoading(){
        print(webView.isLoading)
    }

    // 表示するURLを設定する
    func setupLoadRequest(){
        webView.loadRequest(URLRequest(url: URL(string: "https://www.google.co.jp/")!))
    }

    // ロードを停止する
    func doStopLoading(){
        webView.stopLoading()
    }

    // リロードする
    func doReload(){
        webView.reload()
    }
}

// MARK: - UIWebViewDelegate
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
