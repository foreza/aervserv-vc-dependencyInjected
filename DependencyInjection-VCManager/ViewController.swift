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

        // Initialize 'myBank' earlier; now put some wallets in the bank

        
        
        let walletA = VCWallet(walletType: AerServCoin())
        let walletB = VCWallet(walletType: InMobiDollars())
        let walletC = VCWallet(walletType: Gold())
        
        
        
        
        myBank.insert(walletA, at: 0)
        myBank.insert(walletB, at: 1)
        myBank.insert(walletC, at: 2)
        
        printVCBank()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func printVCBank() {
        
        for wallet in myBank {
            wallet.printStats()
        }
    }


}

