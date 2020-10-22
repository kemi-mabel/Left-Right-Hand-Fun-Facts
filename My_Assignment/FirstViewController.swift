//
//  ViewController.swift
//  My_Assignment
//
//  Created by USER on 14/10/2020.
//

import UIKit

class FirstViewController: UIViewController , LeftorRight{
    func sidefact(fact: String, side: String) {
        
        LeftRightLabel.text = side
        
        FunFact.text = fact
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var LeftRightLabel: UILabel!
    
    @IBOutlet weak var HandImage: UILabel!
    
    
    @IBOutlet weak var FunFact: UILabel!
    
    
    @IBAction func ChooseButtton(_ sender: Any) {
        performSegue(withIdentifier: "ChooseHand", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ChooseHand" {
            
            let SVC = segue.destination as! SecondViewController
            SVC.delegate = self
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         Get the new view controller using segue.destination.
         Pass the selected object to the new view controller.
    }
    */
}

