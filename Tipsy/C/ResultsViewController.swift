//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Pushpinder Pal Singh on 13/12/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    var results : String?
    var detail : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultsLabel.text = results
        settingLabel.text = detail

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
