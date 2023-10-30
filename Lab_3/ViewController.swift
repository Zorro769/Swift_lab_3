//
//  ViewController.swift
//  Lab_3
//
//  Created by Admin on 10/24/23.
//  Copyright © 2023 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var bottomCards: [UIView]!
    @IBOutlet var topCards: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var firstColor: UIColor = UIColor.black

<<<<<<< HEAD
    var isFlipped: Bool = false
    var cardIndex: Int? = nil
=======
    var sequenceNum: Int = 0
    var cardIndex: Int? = nil
    var WinCards: [Bool] = [false, false, false, false, false, false]
>>>>>>> 203bf02842a1ce40dc7a2db6725cbbfbbc42c98c

    @IBAction func buttonCards(_ sender: Any) {
        guard let button = sender as? UIButton,
            let index = buttons.firstIndex(of: button) else{
                return
        }
        
        let top = topCards[index]
        let bottom = bottomCards[index]
<<<<<<< HEAD
        
        if isFlipped || top.isHidden {
=======
        if WinCards[index] == true{
>>>>>>> 203bf02842a1ce40dc7a2db6725cbbfbbc42c98c
            return
        }
        if !top.isHidden {
            UIView.transition(from: bottom, to: top, duration: 0.7, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
<<<<<<< HEAD
=======
        } else {
            UIView.transition(from: top, to: bottom, duration: 0.7, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
>>>>>>> 203bf02842a1ce40dc7a2db6725cbbfbbc42c98c
        }
        
        top.isHidden.toggle()
        bottom.isHidden.toggle()
        
<<<<<<< HEAD
=======
        
>>>>>>> 203bf02842a1ce40dc7a2db6725cbbfbbc42c98c
        if cardIndex == nil {
            firstColor = bottom.backgroundColor!
            cardIndex = index
        } else {
<<<<<<< HEAD
            if firstColor == bottom.backgroundColor {
                cardIndex = nil
            } else {
                isFlipped = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    UIView.transition(from: bottom, to: top, duration: 0.7, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion:{ _ in self.isFlipped = false})
                    let c = self.topCards[self.cardIndex!]
                    let d = self.bottomCards[self.cardIndex!]
                    UIView.transition(from: d, to: c, duration: 0.7, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: {_ in self.isFlipped = false})
=======
            if cardIndex == index {
                cardIndex = nil
                return
            }
            
            if firstColor == bottom.backgroundColor {
                sequenceNum += 1
                WinCards[cardIndex!] = true
                WinCards[index] = true
                cardIndex = nil
            } else {
                sequenceNum = 0
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    UIView.transition(from: bottom, to: top, duration: 0.7, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
                    let c = self.topCards[self.cardIndex!]
                    let d = self.bottomCards[self.cardIndex!]
                    UIView.transition(from: d, to: c, duration: 0.7, options: [.transitionFlipFromLeft, .showHideTransitionViews], completion: nil)
>>>>>>> 203bf02842a1ce40dc7a2db6725cbbfbbc42c98c
                    self.cardIndex = nil
                }
            }
            
    }
    }

}

<<<<<<< HEAD

=======
>>>>>>> 203bf02842a1ce40dc7a2db6725cbbfbbc42c98c
