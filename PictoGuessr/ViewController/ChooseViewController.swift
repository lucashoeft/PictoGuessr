//
//  ChooseViewController.swift
//  PictoGuessr
//
//  Created by Lucas Hoeft on 19.08.18.
//  Copyright © 2018 Lucas Hoeft. All rights reserved.
//

import UIKit

class ChooseViewController: ViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iconImageView.image = UIImage(named: "Handy")
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
