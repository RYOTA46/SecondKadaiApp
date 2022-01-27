//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 法月諒太 on 2022/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    // 画面入力した名前を保持する変数
    @IBOutlet weak var textFieldName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // ラベル入力時のメソッド
    @IBAction func inputName(_ sender: Any) {
    }
    
    // 「あいさつ」ボタン押下時のメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のViewControllerを取得する
        let secondViewController:SecondViewController = segue.destination as! SecondViewController
        
        // 遷移先のSecondViewControllerで宣言しているlabelに値を代入して渡す
        secondViewController.inputName = textFieldName.text!
    }
    
    // 遷移先から戻ってきた時のメソッド
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        }
}

