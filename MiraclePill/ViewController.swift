//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ruby Vega on 05/04/2017.
//  Copyright © 2017 Ruby Vega. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var regionPicker: UIPickerView!
    @IBOutlet weak var regionPickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryInput: UITextField!
    @IBOutlet weak var zipInput: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    
    let regions = ["Region 1", "Region 2", "NCR", "CAR"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        regionPicker.dataSource = self
        regionPicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func regionButtonPressed(_ sender: Any) {
        regionPicker.isHidden = false
        countryInput.isHidden = true
        countryLabel.isHidden = true
        zipInput.isHidden = true
        zipLabel.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return regions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return regions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        regionPickerBtn.setTitle(regions[row], for: UIControlState.normal)
        regionPicker.isHidden = true
        countryInput.isHidden = false
        countryLabel.isHidden = false
        zipInput.isHidden = false
        zipLabel.isHidden = false
        
    }

    @IBAction func onClick(_ sender: Any) {
        
    }
}

