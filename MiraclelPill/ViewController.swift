//
//  ViewController.swift
//  MiraclelPill
//
//  Created by Iain Mitchell on 30/08/2016.
//  Copyright © 2016 Iain Mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var mpLogoImage: UIImageView!
    @IBOutlet weak var mpMainLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var divder: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTxtField: UITextField!
    @IBOutlet weak var streetLabel: UILabel!
    @IBOutlet weak var streetTxtField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTxtField: UITextField!
    @IBOutlet weak var countyLabel: UILabel!
    @IBOutlet weak var countyPicker: UIPickerView!
    @IBOutlet weak var countyButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var pCodeLabel: UILabel!
    @IBOutlet weak var pCodeTxtField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImageView: UIImageView!
    @IBOutlet weak var successImage: UIImageView!
    
    let counties = ["Lincolnshire", "Yorkshire", "Lancashire", "Nottingham"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countyPicker.dataSource = self
        countyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func countyBtnPressed(_ sender: AnyObject) {
        countyPicker.isHidden = false
        countryLabel.isHidden = true
        countryTxtField.isHidden = true
        pCodeLabel.isHidden = true
        pCodeTxtField.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return counties.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return counties[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countyButton.setTitle(counties[row], for: UIControlState.normal)
        countyPicker.isHidden = true
        countryLabel.isHidden = false
        countryTxtField.isHidden = false
        pCodeLabel.isHidden = false
        pCodeTxtField.isHidden = false
    }
    
    @IBAction func buyNowBtnTapped(_ sender: AnyObject) {
        mpLogoImage.isHidden = true
        mpMainLabel.isHidden = true
        priceLabel.isHidden = true
        divder.isHidden = true
        fullNameLabel.isHidden = true
        fullNameTxtField.isHidden = true
        streetLabel.isHidden = true
        streetTxtField.isHidden = true
        cityLabel.isHidden = true
        cityTxtField.isHidden = true
        countyLabel.isHidden = true
        countyButton.isHidden = true
        countryLabel.isHidden = true
        countryTxtField.isHidden = true
        pCodeLabel.isHidden = true
        pCodeTxtField.isHidden = true
        buyNowBtn.isHidden = true
        successImageView.isHidden = false
        successImage.isHidden = false
    }

}

