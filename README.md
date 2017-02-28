# UIWebView

## 概要
UIWebViewは、ウェブやhtmlを表示するときに利用します。

## 関連クラス
UIView, NSCoding, UIScrollViewDelegate


## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|frame  | webviewのサイズを設定する |  webView.frame = self.view.bounds |
|isLoading  | ロード中かどうかの判別を取得する | webView.isLoading |

## 主要メソッド

|メソッド名|説明|サンプル|
|---|---|---|
|loadRequest  |  表示するURLを設定する |  webView.loadRequest(URLRequest) |
|stopLoading  |  ロードを停止する |  webView.stopLoading() |
|reload  |  リロードする |  webView.reload() |

## UIWebViewDelegateのメソッド
|メソッド名|説明|必須|
|---|---|---|
|webViewDidStartLoad  | ロード開始時に呼び出される | - |
|webViewDidFinishLoad  | ロード終了時に呼び出される | - |


## フレームワーク
UIKit.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0〜 |

## 参考
https://developer.apple.com/reference/uikit/uiwebview
