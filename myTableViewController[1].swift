//
//  myTableViewController.swift
//  Final_App_Igbo
//
//  Created by Cuza Onyeagba on 4/24/17.
//  Copyright © 2017 Cuza Onyeagba. All rights reserved.
//

import UIKit

class myTableViewController: UITableViewController {
    
    var imageArray = [""]
    var textArray = [""]
    var igboSolutionsArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight=110
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return colorsPic.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ri", for: indexPath) as! myTableViewCell

        //select text to use
        switch whichArray{
        case 0:
            imageArray = colorsPic
            textArray = colorsText
            igboSolutionsArray = colorsSolution
        case 1:
            imageArray = numbersPic
            textArray = numbersText
            igboSolutionsArray = numbersSolution
        case 2:
            imageArray = bodyPic
            textArray = bodyText
            igboSolutionsArray = bodySolution
        default:
            imageArray = greetingsPic
            textArray = greetingsText
            igboSolutionsArray = greetingsSolution
            
        }
        
        //select images to use
        let theImage = imageArray[indexPath.row]
        //select text to use
        let theText = textArray[indexPath.row]
        
        // Configure the cell...
        cell.imageView?.image = UIImage(named: theImage)
        cell.textLabel?.text = theText
 
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="showView"{
            let destinationViewController = segue.destination as! myViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow
            
            let myrow = indexPath!.row
            
            destinationViewController.myTexts = igboSolutionsArray[myrow]
        }
    }
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
