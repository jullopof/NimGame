//
//  PlayButton.swift
//  NimGame
//
//  Created by Julien Manfredini on 18/06/2017.
//  Copyright © 2017 Infotec. All rights reserved.
//

import UIKit

class PlayButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = self.tintColor.cgColor
    }

    func defaultModif () {
        layer.cornerRadius = 10
        layer.masksToBounds = true
        layer.borderWidth = 1
        layer.borderColor = UIColor.red.cgColor
    }
}
