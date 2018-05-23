//
//  VCWallet.swift
//  DependencyInjection-VCManager
//
//  Created by Jason C on 5/22/18.
//  Copyright © 2018 Jason C. All rights reserved.
//

import Foundation


// The VC Wallet class will use an injected 'currency' dependency to be instantiated.
class VCWallet {
    
    // Each wallet has certain properties like the amt, etc
    var amount : Int
    
    // Let the wallet type be of type 'Currency'
    let walletType : Currency
    
    // In the initialization, we'll make the wallet type require a type of currency
    init(walletType: Currency) {
        self.walletType = walletType
        amount = walletType.initialAmt
    }
    
    // All VC Wallet classes can print out their stats / current as we know they should have some printable methods defined
    func printStats() {
        
        print("[VC-VCWallet] VC Wallet - retrieving stats")
        walletType.printInformation()
        print("This wallet's balance: \(amount) \(walletType.shortName)")
    }
    
}



// Sample implementation of the Currency Prototype
class Gold: Currency {
    
    var currencyName: String = "Gold"
    var shortName: String = "G"
    var currencyDescription: String = "Have you ever wanted to take one of the softest metals in existence and say, this is my form of money now?"
    var rewards: Array<String> = ["Infinity Gauntlet", "Hand of Midas", "Eye of the Storm", "Dragon"]
    var initialAmt: Int = 2
    var ceilingAmt: Int = 100
    var smallPresetIncrement: Int = 1
    var mediumPresetIncrement: Int = 2
    var largePresetIncrement: Int = 5
    
    
    
    func printInformation() {
        print("[VC] This is \(currencyName)")
    }
  
    
    func getName() -> String {
        return currencyName
    }
    
    
    func getDescription() -> String {
        return currencyDescription
    }
    
    
    func getRewards() -> Array<String> {
        return rewards
    }
    
    
}
