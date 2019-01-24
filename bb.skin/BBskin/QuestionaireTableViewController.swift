//
//  QuestionaireTableViewController.swift
//  LoginPractise
//
//  Created by Jenny Xu on 2019-01-07.
//  Copyright © 2019 Dea Gjini. All rights reserved.
//

import UIKit

class QuestionaireTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 10;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section < 2 || section == 3 || section == 4 || section == 6 {
            return 4
        }
        else if section == 5{
            return 5
        }
        
        else if section == 8 {
            return 8
        }
        else if section == 9 {
            return 9
        }
        return 3
        //return 0
    }
    
    
    
    
  /*
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        //configures cell
        if checked[IndexPath.row] == false{
            cell.accessoryType = .none
        } else if checked[IndexPath.row] {
            cell.accessoryType = .checkmark
        }
        return cell
    }
 */
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        /*let cell = tableView.cellForRow(at: indexPath as IndexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
                checked[indexPath.row] = false
            } else {
                cell.accessoryType = .checkmark
                checked[indexPath.row] - 1 = true
            }
    }*/
        }
    
   
    
    let checkedImage = UIImage(named: "icons8-checked-filled-24.png")
     var normal = 0, dry = 0, oily = 0, combination = 0, sensitive = 0

    
   
    
   
    
    
   
     let uncheckedImage = UIImage(named: "icons8-circle-filled-24")
  
    

    func skinTypePoints2(tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            if indexPath.section == 0{
                if indexPath.row == 0{
                    combination = combination + 1
                    
                }
                    
                else if indexPath.row == 1{
                    dry = dry + 1
                    
                }else if indexPath.row == 2{
                
                    sensitive = sensitive + 1
                }else if indexPath.row == 3{
                    normal = normal + 1
                }
            }
                
        else if indexPath.section == 1{
            if indexPath.row == 0{
                combination = combination + 1
            }
                
            else if indexPath.row == 1{
                dry = dry + 1
                
            }else if indexPath.row == 2{
                oily = oily + 1
                
            } else if indexPath.row == 3 {
                normal = normal + 1
            }
        }
            
    if indexPath.section == 2 {
            
            if indexPath.row == 0{
                
                combination = combination + 1
                
                oily = oily + 1
            }
                
            else if indexPath.row == 1{
                
                dry = dry + 1
                
            }else if indexPath.row == 2{
                
                normal = normal + 1
                
            }
            
        }
            
        if indexPath.section == 3 {
            
            if indexPath.row == 0{
                
                oily = oily + 1
                
            }
                
            else if indexPath.row == 1{
                
                normal = normal + 1
                
            }else if indexPath.row == 2{
                
                combination = combination + 1
                
                oily = oily + 1
                
            }
                
            else if indexPath.row == 3{
                
                dry = dry + 1
                
            }
            
        }
            
        if indexPath.section == 4{
            
            if indexPath.row == 0{
                
                sensitive = sensitive + 2
                
            }
                
            else if indexPath.row == 1{
                
                sensitive = sensitive + 1
                
            }else if indexPath.row == 2{
                
                sensitive = sensitive + 3
                
            }
                
            else if indexPath.row == 3{
                
                sensitive = sensitive + 0
    
            }
            
        }
            
         if indexPath.section == 5{
            
            if indexPath.row == 1{
                dry = dry + 1
                
            }
                
            else if indexPath.row == 2{
                
                sensitive = sensitive + 1
                
            }else if indexPath.row == 3{
                
                combination = combination + 1
                
            }
                
            else if indexPath.row == 4{
                
                oily = oily + 1
                
            }
                
            else if indexPath.row == 5 {
                
                normal = normal + 1
                
            }
            
        }
            
        if indexPath.section == 7{
            
            if indexPath.row == 1{
                
                combination = combination + 1
                
            }
                
            else if indexPath.row == 2{
                
                dry = dry + 1
                
            }else if indexPath.row == 3{
                
                oily = oily + 1
            }
                
            else if indexPath.row == 4{
                
                oily = oily + 1
                
                sensitive = sensitive + 1
            }
        }
            
        if indexPath.section == 8{
        }
    }
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextViewController: SkinViewController = segue.destination as! SkinViewController
        
        if normal > combination && normal > dry && normal > oily && normal > sensitive{
            
            nextViewController.skintypeText = "normal"
        }
            
        else if combination > normal && combination > dry && combination > oily && combination > sensitive{
            
            nextViewController.skintypeText = "combination"
        }
            
        else if dry > normal && dry > combination && dry > oily && dry > sensitive {
            
            nextViewController.skintypeText = "dry"
        }
            
        else if oily > normal && oily > combination && oily > dry && dry > sensitive {
            
            nextViewController.skintypeText = "oily"
        }
            
        else if sensitive > normal && sensitive > combination && sensitive > dry && sensitive > oily {
            
            nextViewController.skintypeText = "sensitive"
        }
       
    }*/
    
    var normal = 0, dry = 0, oily = 0, combination = 0, sensitive = 0

    func skinTypePoints2(tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0{
            if indexPath.row == 0{
                combination = combination + 1
                
            }
                
            else if indexPath.row == 1{
                dry = dry + 1
                
            }else if indexPath.row == 2{
                
                sensitive = sensitive + 1
            }else if indexPath.row == 3{
                normal = normal + 1
            }
        }
            
        else if indexPath.section == 1{
            if indexPath.row == 0{
                combination = combination + 1
            }
                
            else if indexPath.row == 1{
                dry = dry + 1
                
            }else if indexPath.row == 2{
                oily = oily + 1
                
            } else if indexPath.row == 3 {
                normal = normal + 1
            }
        }
        
        if indexPath.section == 2 {
            
            if indexPath.row == 0{
                
                combination = combination + 1
                
                oily = oily + 1
            }
                
            else if indexPath.row == 1{
                
                dry = dry + 1
                
            }else if indexPath.row == 2{
                
                normal = normal + 1
                
            }
            
        }
        
        if indexPath.section == 3 {
            
            if indexPath.row == 0{
                
                oily = oily + 1
                
            }
                
            else if indexPath.row == 1{
                
                normal = normal + 1
                
            }else if indexPath.row == 2{
                
                combination = combination + 1
                
                oily = oily + 1
                
            }
                
            else if indexPath.row == 3{
                
                dry = dry + 1
                
            }
            
        }
        
        if indexPath.section == 4{
            
            if indexPath.row == 0{
                
                sensitive = sensitive + 2
                
            }
                
            else if indexPath.row == 1{
                
                sensitive = sensitive + 1
                
            }else if indexPath.row == 2{
                
                sensitive = sensitive + 3
                
            }
                
            else if indexPath.row == 3{
                
                sensitive = sensitive + 0
                
            }
            
        }
        
        if indexPath.section == 5{
            
            if indexPath.row == 1{
                dry = dry + 1
                
            }
                
            else if indexPath.row == 2{
                
                sensitive = sensitive + 1
                
            }else if indexPath.row == 3{
                
                combination = combination + 1
                
            }
                
            else if indexPath.row == 4{
                
                oily = oily + 1
                
            }
                
            else if indexPath.row == 5 {
                
                normal = normal + 1
                
            }
            
        }
        
        if indexPath.section == 7{
            
            if indexPath.row == 1{
                
                combination = combination + 1
                
            }
                
            else if indexPath.row == 2{
                
                dry = dry + 1
                
            }else if indexPath.row == 3{
                
                oily = oily + 1
            }
                
            else if indexPath.row == 4{
                
                oily = oily + 1
                
                sensitive = sensitive + 1
            }
        }
        
        if indexPath.section == 8{
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Sleep" {
            
        let nextViewController: SkinViewController = segue.destination as! SkinViewController
            nextViewController.skintypeText = "Normal"
        
        if normal > combination && normal > dry && normal > oily && normal > sensitive{
            
            nextViewController.skintypeText = "normal"
        }
            
        else if combination > normal && combination > dry && combination > oily && combination > sensitive{
            
            nextViewController.skintypeText = "combination"
        }
            
        else if dry > normal && dry > combination && dry > oily && dry > sensitive {
            
            nextViewController.skintypeText = "dry"
        }
            
        else if oily > normal && oily > combination && oily > dry && dry > sensitive {
            
            nextViewController.skintypeText = "oily"
        }
            
        else if sensitive > normal && sensitive > combination && sensitive > dry && sensitive > oily {
            
            nextViewController.skintypeText = "sensitive"
        }
        }
        
    }
    
    @IBAction func getSkintypeButtonTapped(_ sender: Any) {
        let skinController = self.storyboard?.instantiateViewController(withIdentifier: "SkinViewController") as! SkinViewController
        self.present(skinController, animated: true)
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

