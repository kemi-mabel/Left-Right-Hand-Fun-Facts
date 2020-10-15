//
//  SecondViewController.swift
//  My_Assignment
//
//  Created by USER on 14/10/2020.
//

import UIKit

protocol LeftorRight {
    func Left(data: String)
    func Right(data: String)
}

let rightfunfacts = ["Right-handers are likely to eat more"," Right-handers are likely to be more sporty","Right-handers give to charity a lot","Right-handers  like to go on vacations","Na person Right-handers  be, dem no kill person"]

let leftfunfacts = ["Make Up Roughly 12% of the Population","There's a place called Left Hand.","Left-handers have their own holiday.","Four of our last six presidents were left-handed.","Famous lefties include Oprah and Justin Bieber."]

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var delegate : LeftorRight?
    
    let randomright = rightfunfacts.randomElement()!
    
    let randomleft = leftfunfacts.randomElement()!
    
    
    @IBOutlet weak var ChooseSideLabel: UILabel!
    
    @IBAction func RightHandButton(_ sender: Any) {
        
        delegate?.Right(data: randomright)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func LeftHandButton(_ sender: Any) {
        delegate?.Left(data: randomleft)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
