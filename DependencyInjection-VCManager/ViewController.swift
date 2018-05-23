//
//  ViewController.swift
//  DependencyInjection-VCManager
//
//  Created by Jason C on 5/22/18.
//  Copyright © 2018 Jason C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Declare an array of different types of wallet
    var myBank: Array<VCWallet> = Array()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Put some wallets in the bank
        let walletA = VCWallet(walletType: AerServCoin())
        let walletB = VCWallet(walletType: InMobiDollars())
        let walletC = VCWallet(walletType: Gold())
        
        // Insert the wallets into the bank
        myBank.insert(walletA, at: 0)
        myBank.insert(walletB, at: 1)
        myBank.insert(walletC, at: 2)
        
        // Call the print function on each wallet in the bank
        printVCBank()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Function that will iterate through every wallet in the bank and call the respective printStats() function
    func printVCBank() {
        
        for wallet in myBank {
            wallet.printStats()
        }
    }


}

