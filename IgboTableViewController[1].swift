//
//  IgboTableViewController.swift
//  Final_App_Igbo
//
//  Created by Cuza Onyeagba on 4/24/17.
//  Copyright © 2017 Cuza Onyeagba. All rights reserved.
//

import UIKit

class IgboTableViewController: UITableViewController {
    
    var imageButton = [""]
    var label = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 150;

        if(selection==0){
            label = words
            imageButton = wordsCategoryImg
        }
        if(selection==1){
            label=music
            imageButton=musicCategoryImg
        }
    }//viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return label.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "igbo", for: indexPath)as! IgboTableViewCell

        let content = label[indexPath.row]
        let theImage = imageButton[indexPath.row]
        
        //configure the cell
       cell.selectionLabel.text = content
        cell.selectionImage.image=UIImage(named:theImage)
        
        /*//select text to use
        switch indexPath.row{
        case 0:
            igboWordsArray = colorsText
            igboPicsArray = colorsPic
        case 1:
            igboWordsArray = numbersText
            igboPicsArray = numbersPic
        case 2:
            igboWordsArray = bodyText
            igboPicsArray=bodyPic 
        case 3:
            igboWordsArray = colorsText
        default:
            igboWordsArray = colorsText
        }*/
        igboWordsArray = igboAllWords[indexPath.row]
        
        return cell
    }
   /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="showView"{
            let destinationViewController = segue.destination as! wordsTableViewController
            
          //  let indexPath = self.tableView.indexPathForSelectedRow
            
          //  let myrow = indexPath!.row
            
           // destinationViewController.myText = igboWordsArray[myrow]
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
