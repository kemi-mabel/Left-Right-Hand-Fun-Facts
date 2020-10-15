//
//  ViewController.swift
//  My_Assignment
//
//  Created by USER on 14/10/2020.
//

import UIKit

class FirstViewController: UIViewController , LeftorRight{
    func Left(data: String) {
        LeftRightLabel.text = "Left"
        FunFact.text = data
    }
    
    func Right(data: String) {
        LeftRightLabel.text = "Right"
        FunFact.text = data
    }
    
    
//    var types: [Typeofhands] = [
//        Typeofhands(left: "Make Up Roughly 12% of the Population", right: "Right-handers are likely to eat more"),
//        Typeofhands(left: "There's a place called Left Hand.", right: "Right-handers are likely to be more sporty"),
//        Typeofhands(left: "Left-handers have their own holiday.", right: "Right-handers  like to go on vacations"),
//        Typeofhands(left: "Four of our last six presidents were left-handed.", right: "Right-handers give to charity a lot"),
//        Typeofhands(left: "Famous lefties include Oprah and Justin Bieber.", right: "Na person right-handers  be, dem no kill person"
//)
     // ]
//    
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

