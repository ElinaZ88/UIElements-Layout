//
//  ViewController.swift
//  UIElements Layout
//
//  Created by elina.zvargule on 25/08/2020.
//  Copyright © 2020 elina.zvargule. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
    
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleUI()
        
    }
    func styleUI() {
        myLabel.layer.cornerRadius = 10
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.black.cgColor
        
        mainImageView.layer.cornerRadius = 10
        mainImageView.layer.borderWidth = 2
        mainImageView.layer.borderColor = UIColor.black.cgColor
        
        styleOutletCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
            
        }
        
    }
    func changeButtonImage(with image: String){
        leftButtonUp.setImage(UIImage(named: "home.png"), for: .normal)
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        leftButtonUp.tintColor = .white
        self.view.backgroundColor = UIColor.black
    }
    @IBAction func touchDragOutsideTapped(_ sender: Any) {
        print("touchDragOutsideTapped")
        changeButtonImage(with: "home.png")    }
    
    

}

