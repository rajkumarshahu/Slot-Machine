//
//  ViewController.swift
//  Slot Machine
//
//  Created by Raj Kumar Shahu and Supriya Gadkari
//  Created on 2021-01-28.
//  @Description: Plannig and creation of the User Interface (UI) for the Slot Machine App

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var balanceLabel: UILabel!
    
    var balance: Int = 0 {
        didSet {
            balanceLabel.text = "\(balance)"
        }
    }
    
    
    @IBOutlet weak var betLabel: UILabel!
    
    var bet: Int = 0 {
        didSet {
            betLabel.text = "\(bet)"
        }
    }
    
    @IBOutlet weak var jackPotLabel: UILabel!
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    
    
    @IBOutlet weak var fourthImage: UIImageView!
    @IBOutlet weak var fifthImage: UIImageView!
    @IBOutlet weak var sixthImage: UIImageView!
    
    
    @IBOutlet weak var seventhImage: UIImageView!
    @IBOutlet weak var eighthImage: UIImageView!
    @IBOutlet weak var ninethImage: UIImageView!
    
    
    @IBOutlet weak var spinButtonImage: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        balance = 2000
        
        bet = 10
    }
    
    @IBAction func btnReset(_ sender: Any) {
        balance = 2000
        bet = 10
        spinButtonImage.isEnabled = true
        
        jackPotLabel.text = "1000"
        firstImage.image = UIImage(named: "bell")
        secondImage.image = UIImage(named: "cherry")
        thirdImage.image = UIImage(named: "crown")
        fourthImage.image = UIImage(named: "diamond")
        fifthImage.image = UIImage(named: "bell")
        sixthImage.image = UIImage(named: "leaf")
        seventhImage.image = UIImage(named: "magnet")
        eighthImage.image = UIImage(named: "seven")
        ninethImage.image = UIImage(named: "star")
    }
    
    @IBAction func btnSpin(_ sender: UIButton) {
        
        updateImages()
        
        balance = balance - bet
        
        if secondImage.image == UIImage(named: "seven") && fifthImage.image == UIImage(named: "seven") && eighthImage.image == UIImage(named: "seven") {
            
            jackPotLabel.text = "Jackpot!!!!!!"
            balance = balance + 1000
            
        } else {
            jackPotLabel.text = "Keep Playing"
        }
    }
    
    @IBAction func btnBetIncrease(_ sender: UIButton) {
        
        bet += 10
        balance -= 10
        spinButtonImage.isEnabled = true
        
        
    }
    
    @IBAction func btnBetDecrease(_ sender: UIButton) {
        
        if bet <= 10 || balance < 10 {
            bet = 0
            balance += 0
            spinButtonImage.isEnabled = false
            
        } else if bet >= 10 {
            bet -= 10
            balance += 10
            spinButtonImage.isEnabled = true
        } else if bet <= 0 {
            
        }
    }
    
    
    @IBAction func btnHelp(_ sender: UIButton) {
        
        
    }
    
    func updateImages () {
        
        
        let imageList = [
            "seven",
            "seven",
            "seven",
            "seven",
            "seven",
            "seven",
            "seven",
            "seven",
            "seven",
            "seven",
            "bell",
            "cherry",
            "crown",
            "diamond",
            "leaf",
            "magnet",
            "seven",
            "star",
            "strawberry",
            "watermelon"
        ]
        
        firstImage.image = UIImage(named: imageList.randomElement()!)
        secondImage.image = UIImage(named: imageList.randomElement()!)
        thirdImage.image = UIImage(named: imageList.randomElement()!)
        fourthImage.image = UIImage(named: imageList.randomElement()!)
        fifthImage.image = UIImage(named: imageList.randomElement()!)
        sixthImage.image = UIImage(named: imageList.randomElement()!)
        seventhImage.image = UIImage(named: imageList.randomElement()!)
        eighthImage.image = UIImage(named: imageList.randomElement()!)
        ninethImage.image = UIImage(named: imageList.randomElement()!)
    }
}

