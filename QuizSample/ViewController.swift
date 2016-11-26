//
//  ViewController.swift
//  QuizSample
//
//  Created by Masuhara on 2016/11/26.
//  Copyright © 2016年 net.masuhara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quizNumber: Int = 0
    var point: Int = 0
    @IBOutlet var quizTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 開始
        updateQuizText()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateQuizText() {
        // 終了状態(quizNumber == 0)から1足して開始
        quizNumber = quizNumber + 1
        
        // 問題番号に合わせてクイズのテキストを入れ替える
        if quizNumber == 1 {
            quizTextView.text = "Int型は整数を扱うための型である"
        } else if quizNumber == 2 {
            quizTextView.text = "String型は小数点付きの数値を扱うための型である"
        } else if quizNumber == 3 {
            quizTextView.text = "プログラミングにおける=(イコール)は代入の意味を持つ"
        } else if quizNumber == 4 {
            quizTextView.text = "かける、の演算子は×である"
        } else if quizNumber == 5 {
            quizTextView.text = "iOSシミュレータを起動してアプリを確認するショートカットキーは、CommandキーとRキーである"
            
            // 最終問題なので終了状態に戻す
            quizNumber = 0
        }
    }
    
    @IBAction func tappedMaru() {
        // 各問題で正解の選択肢で◯を選んだ場合に得点を付ける
        if quizNumber == 1 {
            point = point + 10
        } else if quizNumber == 2 {
            point = point - 10
        } else if quizNumber == 3 {
            point = point + 10
        } else if quizNumber == 4 {
            point = point - 10
        } else if quizNumber == 5 {
            point = point + 10
        } else {
            print(point)
            // 最終結果を確認したあと、pointを0に戻す
            point = 0
        }
        
        // 問題文を更新
        updateQuizText()
    }
    
    @IBAction func tappedBatsu() {
        // 各問題で正解の選択肢で◯を選んだ場合に得点を付ける
        if quizNumber == 1 {
            point = point - 10
        } else if quizNumber == 2 {
            point = point + 10
        } else if quizNumber == 3 {
            point = point - 10
        } else if quizNumber == 4 {
            point = point + 10
        } else if quizNumber == 5 {
            point = point - 10
        } else {
            print(point)
            // 最終結果を確認したあと、pointを0に戻す
            point = 0
        }
        
        // 問題文を更新
        updateQuizText()
    }
}

