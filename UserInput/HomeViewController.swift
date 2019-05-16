//
//  HomeViewController.swift
//  UserInput
//
//  Created by Jason Valencius Wijaya on 16/05/19.
//  Copyright © 2019 Jason Valencius Wijaya. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    //Variabel Penampung
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set Label ke Penampungnya
        nameLabel.text = name
    }
    

}
