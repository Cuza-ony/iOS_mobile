//
//  myViewController.swift
//  Final_App_Igbo
//
//  Created by Cuza Onyeagba on 4/24/17.
//  Copyright © 2017 Cuza Onyeagba. All rights reserved.
//

import UIKit

class myViewController: UIViewController {

    var myTexts = ""
    
    @IBOutlet weak var myText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myText.text = myTexts
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
