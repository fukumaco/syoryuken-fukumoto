//
//  ViewController.swift
//  syoryuken
//
//  Created by Fukumoto Asako on 2023/08/27.
//
// 画像の名前の配列を作成


import UIKit

class ViewController: UIViewController {
    
    let imageNameArray = ["attack1","attack2","attack3","attack4","attack5","attack5","attack6","attack7","attack8","attack9","attack10","attack11","attack12","attack13","attack14","attack15","attack16","attack17","attack18","attack19","attack20"]
    var dispImageNo = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //    countLabel.text = String(count)
        
    }
    //イメージビュー紐付け
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    //ボタンの紐付け
    
    @IBAction func pushButton(_ sender: Any) {
        
        
        var count: Int = 20
        count -= 1 //追加
        countLabel.text = String(count) //追加
        
        //タイマーを作成して1秒ごとに画像を切り替える関数を呼び出す
        
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            
        }
        
        //5になったら
        if count == 1 {
            dispImageNo += 1
        } else if count  == 2 {
            dispImageNo += 1
        } else if count  == 3 {
            dispImageNo += 1
        } else if count  == 4 {
            dispImageNo += 1
        } else if count  == 5 {
            dispImageNo += 1
        } else if count  == 6 {
            dispImageNo += 1
        } else if count  == 13 {
            dispImageNo += 1
        } else if count  == 12 {
            dispImageNo += 1
        } else if count  == 11 {
            dispImageNo += 1
        }
        
        displayImage()
        
    }
    
    /*
     @IBAction func pushButton(_ sender: Any) {
     var count: Int = 20
     count -= 1 //追加
     countLabel.text = String(count) //追加
     
     
     //タイマーを作成して1秒ごとに画像を切り替える関数を呼び出す
     //   var index = 0 // 現在の画像のインデックス
     //        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
     // 配列の要素数を超えないようにインデックスを更新
     //    index = (index + 1) % imageNameArray.count

     
     //5になったら
     if count == 19 {
     dispImageNo += 1
     } else if count == 18 {
     dispImageNo += 1
     } else if count == 17 {
     dispImageNo += 1
     } else if count == 16 {
     dispImageNo += 1
     } else if count == 15 {
     dispImageNo += 1
     } else if count == 14 {
     dispImageNo += 1
     } else if count == 13 {
     dispImageNo += 1
     } else if count == 12 {
     dispImageNo += 1
     } else if count == 11 {
     dispImageNo += 1
     }
     
     displayImage()
     
     */
    
            
        func displayImage() {
            let name = imageNameArray[dispImageNo] //表示する画像の名前を決定
            let image = UIImage(named: name) //画像を変数に読み込む
            imageView.image = image // imageViewに読み込んだ画像をセット
        }
    
}


    /*
     //ココから追加
     if (count == 75){
     textLabel.text = "頑張れ"
     } else if(count == 50){
     textLabel.text = "まだまだ"
     } else if(count == 25){
     textLabel.text = ""
     countLabel.text = "もうちょい"
     }
     //ココまで
     */
