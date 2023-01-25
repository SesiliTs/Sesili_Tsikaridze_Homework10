//
//  ViewController.swift
//  Sesili_Tsikaridze_Homework10
//
//  Created by Sesili on 25.01.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chooseColors: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseColorButton(_ sender: UIButton) {
        let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        guard let secondViewController else { return }
        present(secondViewController, animated: true)
        secondViewController.changeColorClosure = { color in
            self.chooseColors.tintColor = color
        }
        secondViewController.changeBackgroundClosure = { color in
            self.view.backgroundColor = color
        }
    }
    
    
}

