//
//  EndViewController.swift
//  PictoGuessr
//
//  Created by Lucas Hoeft on 19.08.18.
//  Copyright © 2018 Lucas Hoeft. All rights reserved.
//

import UIKit

class EndViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func restartPlaying(_ sender: UIButton) {
        catalogNeuTemporary = catalogNeu
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "StartViewController") as! StartViewController
        self.present(newViewController, animated: true, completion: nil)
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
