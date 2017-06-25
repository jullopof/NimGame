//
//  JeuADeuxVC.swift
//  NimGame
//
//  Created by Julien Manfredini on 12/06/2017.
//  Copyright © 2017 Infotec. All rights reserved.
//

import UIKit

class JeuADeuxVC: UIViewController {
    
    @IBOutlet weak var playerTwoOneMatchButton: PlayButton!
    @IBOutlet weak var playerTwoTwoMatchButton: PlayButton!
    @IBOutlet weak var playerTwoTreeMztchButton: PlayButton!
    @IBOutlet weak var playerOneOnmatchButton: PlayButton!
    @IBOutlet weak var playerOneTwoMatchButton: PlayButton!
    @IBOutlet weak var playerOneTreeMatchButton: PlayButton!

    @IBOutlet weak var testButton: PlayButton!
    @IBOutlet weak var tabloView: UIView!
    
    @IBOutlet weak var match1: UIImageView!
    @IBOutlet weak var match2: UIImageView!
    @IBOutlet weak var match3: UIImageView!
    @IBOutlet weak var match4: UIImageView!
    @IBOutlet weak var match5: UIImageView!
    @IBOutlet weak var match6: UIImageView!
    @IBOutlet weak var match7: UIImageView!
    @IBOutlet weak var match8: UIImageView!
    @IBOutlet weak var match9: UIImageView!
    @IBOutlet weak var match10: UIImageView!
    @IBOutlet weak var match11: UIImageView!
    @IBOutlet weak var match12: UIImageView!
    @IBOutlet weak var match13: UIImageView!
    @IBOutlet weak var match14: UIImageView!
    @IBOutlet weak var match15: UIImageView!
    @IBOutlet weak var match16: UIImageView!
    @IBOutlet weak var match17: UIImageView!
    @IBOutlet weak var match18: UIImageView!
    @IBOutlet weak var match19: UIImageView!
    @IBOutlet weak var match20: UIImageView!
    
    var tableauMatch: [Int: Bool] = [:]
    var matchDebut = 1
    var matchFin = 20
    var nbrRestant = 20
    var compteurHaut = 20
    var compteurBas = 1
    
    let NBR_MATCH = 20
    let NOM_PHOTO_UP = "match1"
    let NOM_PHOTO_DOWN = "match2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initGame()
    }

    @IBAction func TestButtonAction() {
        testButton.defaultModif()
        playerOneOnmatchButton.defaultModif()
    }
    
    func apparenceModif() {
        tabloView.layer.cornerRadius = 12
    }
  
    func initGame() {
        
        apparenceModif()
        
        setImageUp(uiImageView: match1)
        setImageUp(uiImageView: match2)
        setImageUp(uiImageView: match3)
        setImageUp(uiImageView: match4)
        setImageUp(uiImageView: match5)
        setImageUp(uiImageView: match6)
        setImageUp(uiImageView: match7)
        setImageUp(uiImageView: match8)
        setImageUp(uiImageView: match9)
        setImageUp(uiImageView: match10)
        setImageUp(uiImageView: match11)
        setImageUp(uiImageView: match12)
        setImageUp(uiImageView: match13)
        setImageUp(uiImageView: match14)
        setImageUp(uiImageView: match15)
        setImageUp(uiImageView: match16)
        setImageUp(uiImageView: match17)
        setImageUp(uiImageView: match18)
        setImageUp(uiImageView: match19)
        setImageUp(uiImageView: match20)
        
        tableauMatch = [:]
        for i in 1 ... 20 {
            tableauMatch[i] = true
        }
        matchDebut = 1
        matchFin = 20
        nbrRestant = 20
        compteurHaut = 20
        compteurBas = 1

        print(tableauMatch)
        
        let choixDebut = choiceWhoBegin()
        
        print("le choix du joueur : \(choixDebut)")
        
        if choixDebut == 1 {
            debutPlayerOne()
        }
        
    }
    
    func setImageUp(uiImageView: UIImageView) {
        uiImageView.image = UIImage(named: NOM_PHOTO_UP)
    }
    
    func setImageDown(uiImagView : UIImageView){
        uiImagView.image = UIImage(named: NOM_PHOTO_DOWN)
    }
    
    
    @IBAction func PlayerOneOneMatch() {
        playerOneDidPlay(nbrMatch: 1)
    }
    @IBAction func playerOneTwoMatch() {
        playerOneDidPlay(nbrMatch: 2)
    }
    @IBAction func playerOneTreeMatch() {
        playerOneDidPlay(nbrMatch: 3)
    }
    @IBAction func playerTwoOneMatch() {
        playertwoDidPlay(nbrMatch: 1)
        print("playertwoDidPlay(nbrMatch: 1)")
    }
    @IBAction func playerTwoTwoMatch() {
        playertwoDidPlay(nbrMatch: 2)
    }
    @IBAction func playerTwoTreeMatch() {
        playertwoDidPlay(nbrMatch: 3)
    }
    
    func choiceWhoBegin() -> Int {
        return 1
    }
    func choixUIImageView(numero: Int) -> UIImageView? {
        switch numero {
        case 1:
            return match1
        case 2:
            return match2
        case 3:
            return match3
        case 4:
            return match4
        case 5:
            return match5
        case 6:
            return match6
        case 7:
            return match7
        case 8:
            return match8
        case 9:
            return match9
        case 10:
            return match10
        case 11:
            return match11
        case 12:
            return match12
        case 13:
            return match13
        case 14:
            return match14
        case 15:
            return match15
        case 16:
            return match16
        case 17:
            return match17
        case 18:
            return match18
        case 19:
            return match19
        case 20:
            return match20
        default:
            return match1
        }
    }
    
    func debutPlayerOne() {
        print("debut player 1")
        playerTwoOneMatchButton.isEnabled = false
        playerTwoTwoMatchButton.isEnabled = false
        playerTwoTreeMztchButton.isEnabled = false
        playerOneOnmatchButton.isEnabled = true
        playerOneTwoMatchButton.isEnabled = true
        playerOneTreeMatchButton.isEnabled = true
    }
    
    func debutPlayerTwo() {
        print("debut player 2")
        playerOneOnmatchButton.isEnabled = false
        playerOneTwoMatchButton.isEnabled = false
        playerOneTreeMatchButton.isEnabled = false
        playerTwoOneMatchButton.isEnabled = true
        playerTwoTwoMatchButton.isEnabled = true
        playerTwoTreeMztchButton.isEnabled = true
    }
    
    func playerOneDidPlay(nbrMatch: Int){
        if nbrRestant > nbrMatch {
            pOneEnleveMatch(nbrMatchAEnlever: nbrMatch)
        } else if nbrRestant <= nbrMatch {
            pOnePerdu()
        }
    }
    
    func playertwoDidPlay(nbrMatch: Int){
        if nbrRestant > nbrMatch {
            pTwoEnleveMatch(nbrMatchAEnlever: nbrMatch)
        } else if nbrRestant <= nbrMatch {
            pTwoPerdu()
        }
    }
    
    func pOneEnleveMatch(nbrMatchAEnlever: Int) {
        for _ in 1 ... nbrMatchAEnlever {
            if let choixView = choixUIImageView(numero: compteurHaut) {
                setImageDown(uiImagView: choixView)
            }
            print("desactiv match \(compteurHaut)")
            compteurHaut = compteurHaut - 1
        }
        nbrRestant = nbrRestant - nbrMatchAEnlever
        print(nbrRestant)
        debutPlayerTwo()
    }
    
    func pTwoEnleveMatch(nbrMatchAEnlever: Int) {
        for _ in 1 ... nbrMatchAEnlever {
            if let choixView = choixUIImageView(numero: compteurBas) {
                setImageDown(uiImagView: choixView)
            }
            print("desactiv match \(compteurBas)")
            compteurBas = compteurBas + 1
        }
        nbrRestant = nbrRestant - nbrMatchAEnlever
        print(nbrRestant)
        debutPlayerOne()
    }
    
    func pOnePerdu() {
        // notif et relance
        print("Joueur 1 a perdu")
        alerteTitreMessageEtOK("Joueur 2 a gagné", message: "ok pour rejouer")
    }
    
    func pTwoPerdu() {
        // notif et relance
        print("player two a perdu")
        alerteTitreMessageEtOK("Joueur 1 a gagné", message: "ok pour rejouer")
    }
    
    func alerteTitreMessageEtOK(_ titre: String!, message: String!) {
        let dialogueAlerte = UIAlertController(title: titre, message: message, preferredStyle: .alert)
        let boutonOK = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) -> Void in
            self.initGame()
        }
        let boutonRetourAccueil = UIAlertAction(title: "Retour menu", style: .cancel) { (UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        dialogueAlerte.addAction(boutonOK)
        dialogueAlerte.addAction(boutonRetourAccueil)
        present(dialogueAlerte, animated: true, completion: nil)
    }
    
    
    func alerteTitreMessageEtOKEtDismiss(_ titre: String!, message: String!) {
        let dialogueAlerte = UIAlertController(title: titre, message: message, preferredStyle: .alert)
        let boutonOK = UIAlertAction(title: "OK", style: .default) { (UIAlertAction) -> Void in
            self.dismiss(animated: true, completion: nil)
        }
        dialogueAlerte.addAction(boutonOK)
        present(dialogueAlerte, animated: true, completion: nil)
    }
    
    func defaultModif2 (ButtonPassed : UIButton) {
        ButtonPassed.layer.cornerRadius = 10
        ButtonPassed.layer.masksToBounds = true
        ButtonPassed.layer.borderWidth = 1
        ButtonPassed.layer.borderColor = ButtonPassed.tintColor.cgColor
    }
    
    
}
