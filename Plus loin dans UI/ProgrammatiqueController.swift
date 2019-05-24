//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by florian kindt on 23/05/2019.
//  Copyright © 2019 captain web. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    var monPremierUIView: UIView?
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?
    var maPremiereIV: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else {
            return
        }
        scroll.addSubview(monPremierUIView!)

        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .center
        scroll.addSubview(monPremierLabel!)
        
        let rectDeMonBouton = CGRect(x: view.frame.width / 2 - 75, y: monPremierLabel!.frame.maxY + 20, width: 160, height: 40)
        monPremierBouton = UIButton(frame: rectDeMonBouton)
        monPremierBouton?.setTitle("Appuyer", for: UIControl.State.normal)
        monPremierBouton?.tintColor = UIColor.red
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        scroll.addSubview(monPremierBouton!)
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuyer), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let rectIV = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        maPremiereIV = UIImageView(frame: rectIV)
        maPremiereIV?.image = UIImage(named: "logo")
        maPremiereIV?.contentMode = .scaleAspectFill
        maPremiereIV?.clipsToBounds = true;
        scroll.addSubview(maPremiereIV!)
        scroll.sendSubviewToBack(maPremiereIV!)
        
        maPremiereIV?.isUserInteractionEnabled = true
        maPremiereIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuyer)))
        
        var couleurs: [UIColor] = [.red, .blue, .white, .black]
        var maximum: CGFloat = (maPremiereIV?.frame.maxY)!
        
        for couleur in couleurs {
            let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: 100, height: 100))
            vue.backgroundColor = couleur
            scroll.addSubview(vue)
            maximum = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maximum + 100)
    }
    
    @objc func boutonAppuyer() {
        print("tu as bien appuyé")
    }
    
    @objc func imageAppuyer(){
        print("tu as bien appuyé")
    }

}
