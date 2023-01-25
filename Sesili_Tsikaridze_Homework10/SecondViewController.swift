//
//  SecondViewController.swift
//  Sesili_Tsikaridze_Homework10
//
//  Created by Sesili on 25.01.23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var changeColorClosure: ((UIColor) -> ())?
    var changeBackgroundClosure: ((UIColor) -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func buttonColor(_ sender: UIButton) {
        changeColorClosure?(sender.tintColor)
    }
    
    
    
    @IBAction func backgroundColor(_ sender: UIButton) {
        changeBackgroundClosure?(sender.tintColor)
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
