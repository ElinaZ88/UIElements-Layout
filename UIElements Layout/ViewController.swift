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
    //MARK:- Logic Style to myLabel, Buttons and Image
    
    func changeButtonImage(with image: String){
        leftButtonUp.setImage(UIImage(named: "home.png"), for: .normal)
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
        leftButtonUp.tintColor = .white
        self.view.backgroundColor = UIColor.black
    }
    func changeButtonColor(){
        rightButtonUp.backgroundColor = UIColor.red
    }
   
    func changeTextlabel(){
        self.myLabel.text = "You pressed the button"
    }
    
    func changeImage(with image: String) {
        mainImageView.image = UIImage(systemName: "sun.max", withConfiguration: UIImage.SymbolConfiguration(weight: .regular))
        mainImageView.tintColor = .yellow
    }
    //MARK:- IBAction for three more buttons
    @IBAction func touchDragOutsideTapped(_ sender: Any) {
        print("touchDragOutsideTapped")
        changeButtonImage(with: "home.png")
        
    }
    
    @IBAction func touchUpInsideTapped(_ sender: Any) {
        print("touchUpInsideTapped")
        changeButtonColor()
        }
    
    
    @IBAction func leftDownTapped(_ sender: Any) {
        print("LeftButtonDownTapped")
        changeTextlabel()
        
    }
    
    @IBAction func rightDownTapped(_ sender: Any) {
        print("RightDownTapped")
        changeImage(with: "sun.max")
        
    }
}

