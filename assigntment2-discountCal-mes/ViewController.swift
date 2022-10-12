//
//  ViewController.swift
//  assigntment2-discountCal-mes
//
//  Created by Muhammad Fahmi on 12/10/22.
//

import UIKit

var saveCal = Double() // Jumlah brp banyak di save
var finalPriceCal = Double() // Harga finalnya
let inputPrice = Double() // Masukin harga awalnya
let totalDiscount = Double() // Jumlah discount

class ViewController: UIViewController {
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var discountTextField: UITextField!
    @IBOutlet weak var finalPriceLabel: UILabel!
    @IBOutlet weak var youSaveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let inputPrice = Double(priceTextField.text!)
        let totalDiscount = Double(discountTextField.text!)
    
        saveCal = inputPrice! * totalDiscount! / 100
        finalPriceCal = inputPrice! - saveCal
        
        let price = String(format: "%.2f", [priceTextField!])
        let discount = String(format: "%.2f", [discountTextField!])
        let finalPrice = String(finalPriceCal)
        let save = String(saveCal)
        
        finalPriceLabel.text = "\(finalPrice)"
        youSaveLabel.text = "\(save)"

    }
    @IBAction func resetButton(_ sender: UIButton) {
        
    }
    

}

