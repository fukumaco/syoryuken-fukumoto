//
//  ViewController.swift
//  syoryuken
//
//  Created by Fukumoto Asako on 2023/08/27.
//
// 画像の名前の配列を作成

import UIKit
 
class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面背景を設定
        self.view.backgroundColor = UIColor(red:1.0,green:1.0,blue:1.0,alpha:1.0)
    }
    
    // ボタンをタップしてanimation開始
    @IBAction func start(_ sender: Any) {
        // アニメーション用の画像
        let image1 = UIImage(named:"attack1")!
        let image2 = UIImage(named:"attack2")!
        let image3 = UIImage(named:"attack3")!
        let image4 = UIImage(named:"attack4")!
        let image5 = UIImage(named:"attack5")!
        let image6 = UIImage(named:"attack6")!
        let image7 = UIImage(named:"attack7")!
        let image8 = UIImage(named:"attack8")!
        let image9 = UIImage(named:"attack9")!
        let image10 = UIImage(named:"attack10")!
        let image11 = UIImage(named:"attack11")!
        let image12 = UIImage(named:"attack12")!
        let image13 = UIImage(named:"attack13")!
        let image14 = UIImage(named:"attack14")!
        let image15 = UIImage(named:"attack15")!
        let image16 = UIImage(named:"attack16")!
        let image17 = UIImage(named:"attack17")!
        let image18 = UIImage(named:"attack18")!
        let image19 = UIImage(named:"attack19")!
        let image20 = UIImage(named:"attack20")!
 
        // UIImage の配列を作る
        var imageListArray :Array<UIImage> = []
        // UIImage 各要素を追加
        imageListArray.append(image1)
        imageListArray.append(image2)
        imageListArray.append(image3)
        imageListArray.append(image4)
        imageListArray.append(image5)
        imageListArray.append(image6)
        imageListArray.append(image7)
        imageListArray.append(image8)
        imageListArray.append(image9)
        imageListArray.append(image10)
        imageListArray.append(image11)
        imageListArray.append(image12)
        imageListArray.append(image13)
        imageListArray.append(image14)
        imageListArray.append(image15)
        imageListArray.append(image16)
        imageListArray.append(image17)
        imageListArray.append(image18)
        imageListArray.append(image19)
        imageListArray.append(image20)

        // 画面スクリーンサイズ
        let screenWidth = self.view.bounds.width
        let screenHeight = self.view.bounds.height
        
        // 画像のサイズ
        let imageWidth = image1.size.width
        let imageHeight = image1.size.height
        
         //UIImageViewのインスタンス生成,ダミーでimage1を指定
 //       let imageView:UIImageView = UIImageView(image:image1)


        
        //表示する画像の名前を決定
  //      let name = imageListArray[:]
        //表示する画像の名前を決定
  //      let image = UIImage(named:name)
        //画像を変数に読み込む
  //      imageView.image = image  //imageViewに読み込んだ画像をセット
 
        
        
        // 画像サイズからImageViewの大きさを設定していく
        let rect = CGRect(x:0,
                          y:0,
                          width:imageWidth,
                          height:imageHeight )
        
        imageView.frame = rect
        
        // 画像が画面中央にくるように位置合わせ
        imageView.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
        
        // view に追加する
        self.view.addSubview(imageView)
        
        // 画像Arrayをアニメーションにセット
        imageView.animationImages = imageListArray
        
        // 間隔（秒単位）
        imageView.animationDuration = 3
        // 繰り返し
        imageView.animationRepeatCount = 1
        
        // アニメーションを開始
        imageView.startAnimating()
        
        // アニメーションを終了
        //imageView.stopAnimating()
        
    }
}

 /*
  
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
  
  //    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
  
  
  
  //5になったら
  if count == 19 {
  dispImageNo += 1
  } else if count  == 18{
  dispImageNo += 1
  } else if count  == 17{
  dispImageNo += 1
  } else if count  == 16 {
  dispImageNo += 1
  } else if count  == 15 {
  dispImageNo += 1
  } else if count  == 14 {
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
  :?
*/
