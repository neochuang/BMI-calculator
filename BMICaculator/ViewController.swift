//
//  ViewController.swift
//  BMICaculator
//
//  Created by Neo on 2025/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var 計算按鈕: UIButton!
    
    @IBOutlet weak var 身高: UILabel!
    @IBOutlet weak var 體重: UILabel!
    @IBOutlet weak var 重置按鈕: UIButton!
    
    @IBOutlet weak var 身高輸入: UITextField!
    
    @IBOutlet weak var 體重輸入: UITextField!

    @IBAction func caculate(_ sender: Any) {
        let heightS = 身高輸入.text
        let weightS = 體重輸入.text
        guard let heightI = Double(heightS!) else{
            fatalError("height error")
        }
        guard let weightI = Double(weightS!) else{
            fatalError("weight error")
        }
        let bmi = weightI / (heightI * heightI / 10000)
        
        
        
        let BMI = bmi.rounding(toDecimal: 1)
            
        let alert = UIAlertController(
            title: "計算結果",
            message: "你的ＢＭＩ：\(BMI)",
            preferredStyle: .actionSheet
        )
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .destructive,
            handler: { _ in
            // delete action
        }))
        present(alert,
                animated: true,
                completion: nil
        )
    }
    @IBAction func reset(_ sender: Any) {
        身高輸入.text = " "
        體重輸入.text = " "
    }
}
