//
//  ViewController.swift
//  UserInput
//
//  Created by Jason Valencius Wijaya on 16/05/19.
//  Copyright © 2019 Jason Valencius Wijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UITextField!
    @IBOutlet weak var numberLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Buat assign delegate dari viewcontroller ke textfield
        fullNameLabel.delegate = self
        numberLabel.delegate = self
    }

    //Action buat Segue
    @IBAction func registerUser(_ sender: Any) {
        performSegue(withIdentifier: "GoToHome", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //Jika castingnya berhasil dan dapat HomViewController maka..
        if let destination = segue.destination as? HomeViewController{
            //Kita set nilai name di HomeViewController ke TextField
            destination.name = fullNameLabel.text
        }
    }
}

//Extension buat TextField implementasi TextField Delegate
extension ViewController: UITextFieldDelegate{
    
    //Kalo misalnya kita klik di keyboard return apa yang terjadi
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        if textField == fullNameLabel{
            numberLabel.becomeFirstResponder()
        }else if textField == numberLabel{
            //Menghilangkan fokus dari textfield yang sedang fokus
            textField.resignFirstResponder()
        }
        
        return true
    }
}

