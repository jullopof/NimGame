//
//  ViewController.swift
//  NimGame
//
//  Created by Julien Manfredini on 12/06/2017.
//  Copyright © 2017 Infotec. All rights reserved.
//

import UIKit

class AccueilVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func twoPlayerButton() {
        performSegue(withIdentifier: "AccueilToTwoPlayers", sender: nil)
    }

}

