//
//  ViewController.swift
//  MyTipper
//
//  Created by Sriram Rathinavelu on 3/11/17.
//  Copyright © 2017 Sriram Rathinavelu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipValueChanged(tipSlider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tipValueChanged(_ sender: UISlider) {
        draw()
    }
    
    func draw() {
        let billAmountValue = Float(billAmount.text!) ?? 0
        tipAmount.text = String(format: "%.2f%%", tipSlider.value)
        tipValue.text = String(format: "$%.2f", billAmountValue * (tipSlider.value/100))
        totalAmount.text = String(format: "$%.2f", billAmountValue * (tipSlider.value/100) + billAmountValue)
    }
    
    @IBAction func billAmountEdited(_ sender: UITextField) {
        draw()
    }
    
}

