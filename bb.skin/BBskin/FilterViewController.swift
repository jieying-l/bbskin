//
//  FilterViewController.swift
//  LoginPractise
//
//  Created by Jenny Xu on 2019-01-07.
//  Copyright © 2019 Dea Gjini. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {

    @IBOutlet weak var typeSegment1: UISegmentedControl!
    @IBOutlet weak var skinSegment1: UISegmentedControl!
    @IBOutlet weak var skinSegment2: UISegmentedControl!
    @IBOutlet weak var productSegment1: UISegmentedControl!
    @IBOutlet weak var productSegment2: UISegmentedControl!
    @IBOutlet weak var productSegment3: UISegmentedControl!
    @IBOutlet weak var concernSegment1: UISegmentedControl!
    @IBOutlet weak var concernSegment2: UISegmentedControl!
    @IBOutlet weak var concernSegment3: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    let typeSegmentValue = ["All", "Products", "Regimes"]
    @IBAction func typeFirstSecondThird(_ sender: UISegmentedControl) {
        _ = [typeSegmentValue[typeSegment1.selectedSegmentIndex]]
    }
    
    let skinSegmentValue = ["All","Normal","Dry","Oily","Combination","Sensitive"]
    @IBAction func SkinFirstSecondThird(_ sender: UISegmentedControl) {
        skinSegment2.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = skinSegmentValue[skinSegment1.selectedSegmentIndex]
    }
    
    @IBAction func SkinFourthFifthSixth(_ sender: UISegmentedControl) {
        skinSegment1.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = skinSegmentValue[skinSegment2.selectedSegmentIndex]
    }
    
    let productSegmentValue = ["All","Moisturizer","Serum/Oil","Toner","Cleanser","Target Treatmetn", "Mask"]
    @IBAction func ProductFirst(_ sender: UISegmentedControl) {
        productSegment2.selectedSegmentIndex = UISegmentedControl.noSegment
        productSegment3.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = productSegmentValue[productSegment1.selectedSegmentIndex]
    }
    
    @IBAction func ProductSecondThirdFourth(_ sender: UISegmentedControl) {
        productSegment1.selectedSegmentIndex = UISegmentedControl.noSegment
        productSegment3.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = productSegmentValue[productSegment2.selectedSegmentIndex]
    }
    
    
    @IBAction func ProductFifthSixthSeventh(_ sender: UISegmentedControl) {
        productSegment1.selectedSegmentIndex = UISegmentedControl.noSegment
        productSegment1.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = productSegmentValue[productSegment3.selectedSegmentIndex]
    }
    
    let concernSegmentValue = ["All","Dehydration","Hyperpigmentation","Dullness","Texture","Acne/Blemishes", "Pores"]
    @IBAction func concernFirst(_ sender: UISegmentedControl) {
        concernSegment2.selectedSegmentIndex = UISegmentedControl.noSegment
        concernSegment3.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = concernSegmentValue[concernSegment1.selectedSegmentIndex]
    }
    @IBAction func concernSecondThirdFourth(_ sender: UISegmentedControl) {
        concernSegment1.selectedSegmentIndex = UISegmentedControl.noSegment
        concernSegment3.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = concernSegmentValue[concernSegment2.selectedSegmentIndex]
    }
    
    @IBAction func concernFifthSixthSeventh(_ sender: UISegmentedControl) {
        concernSegment1.selectedSegmentIndex = UISegmentedControl.noSegment
        concernSegment2.selectedSegmentIndex = UISegmentedControl.noSegment
        _ = concernSegmentValue[concernSegment3.selectedSegmentIndex]
    }
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


