//
//  ViewController.swift
//  assigntment2-discountCal-mes
//  as·sign·ment, TYPO Nama Projectnya WKWKW
//  Created by Muhammad Fahmi on 12/10/22.
//
//  Blum ada constraint jg, tested on Iphone 11 Simulator
//  App-nya belum sy tambahin Optional Chaining/Error Handling,
//  Jd, ketika angkanya blum di input pd textField dan di run, maka app akan crash/error runtime.

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
        let inputPrice = Double(priceTextField.text!) // makai double biar lebih precision
        let totalDiscount = Double(discountTextField.text!)
    
        saveCal = inputPrice! * totalDiscount! / 100 // itung jumlah yg di save
        finalPriceCal = inputPrice! - saveCal // itung harga finalnya
        
        // ngubah double ke string
        let finalPrice = String(finalPriceCal)
        let save = String(saveCal)
        
        // nampilin price/savenya ke textLabel
        finalPriceLabel.text = "\(finalPrice)"
        youSaveLabel.text = "\(save)"
    }
    
    @IBAction func resetButton(_ sender: UIButton) { // reset button buat reset semua jd 0/empty cell
        reset()
    }
    
    func reset() { // reset function buat reset semua jd 0/empty cell
        priceTextField.text = ""
        discountTextField.text = ""
        finalPriceLabel.text = "0"
        youSaveLabel.text = "0"
    }

}
