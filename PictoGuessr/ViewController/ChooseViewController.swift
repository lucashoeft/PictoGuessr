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
    @IBOutlet weak var answerOne: UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var randomIndex = 0
        var currentIcon: iconData
        
        if catalogNeuTemporary.count > 0 {
            randomIndex = Int(arc4random_uniform(UInt32(catalogNeuTemporary.count)))
            currentIcon = catalogNeuTemporary[randomIndex]
            
            globalIcon = currentIcon
            globalIconIdentifier = randomIndex
            
            iconImageView.image = UIImage(named: currentIcon.imageName)
            answerOne.setTitle(currentIcon.imageAnswerOne.imageDescription, for: .normal)
            answerTwo.setTitle(currentIcon.imageAnswerTwo.imageDescription, for: .normal)
            answerThree.setTitle(currentIcon.imageAnswerThree.imageDescription, for: .normal)
        } else {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "EndViewController") as! EndViewController
            self.present(newViewController, animated: true, completion: nil)
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answerOnePressed(_ sender: UIButton) {
        
        // check if answer is correct
        if globalIcon.imageName == globalIcon.imageAnswerOne.imageID {
            catalogNeuTemporary.remove(at: globalIconIdentifier)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            self.present(newViewController, animated: true, completion: nil)
        } else {
            catalogNeuTemporary.remove(at: globalIconIdentifier)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "FalseViewController") as! FalseViewController
            self.present(newViewController, animated: true, completion: nil)
            
        }

    }
    
    @IBAction func answerTwoPressed(_ sender: UIButton) {
        
        // check if answer is correct
        if globalIcon.imageName == globalIcon.imageAnswerTwo.imageID {
            catalogNeuTemporary.remove(at: globalIconIdentifier)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            self.present(newViewController, animated: true, completion: nil)
        } else {
            catalogNeuTemporary.remove(at: globalIconIdentifier)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "FalseViewController") as! FalseViewController
            self.present(newViewController, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func answerThreePressed(_ sender: UIButton) {
        
        // check if answer is correct
        if globalIcon.imageName == globalIcon.imageAnswerThree.imageID {
            catalogNeuTemporary.remove(at: globalIconIdentifier)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            self.present(newViewController, animated: true, completion: nil)
        } else {
            catalogNeuTemporary.remove(at: globalIconIdentifier)
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "FalseViewController") as! FalseViewController
            self.present(newViewController, animated: true, completion: nil)
        }
        
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
