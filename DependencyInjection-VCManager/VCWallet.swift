//
//  VCWallet.swift
//  DependencyInjection-VCManager
//
//  Created by Jason C on 5/22/18.
//  Copyright © 2018 Jason C. All rights reserved.
//

import Foundation


// Each wallet will implement its own currency protocol.
protocol Currency {
    
    var currencyName : String {get set}
    var shortName : String {get set}
    var currencyDescription : String {get set}
    var rewards: Array<String> {get set}
    
    var initialAmt: Int {get set}
    var ceilingAmt: Int {get set}
    var smallPresetIncrement: Int {get set}
    var mediumPresetIncrement: Int {get set}
    var largePresetIncrement: Int {get set}
    
    // Printable method
    func printInformation()
    
    // Get Methods
    func getName() -> String
    func getDescription() -> String
    func getRewards() -> Array<String>
    
    
    
    
}


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


class AerServCoin: Currency {

    var currencyName: String = "AerServ Coins"
    var shortName: String = "ASC"
    var currencyDescription: String = "Coins that you can use in the AerServ Market!"
    var rewards: Array<String> = ["AerCat", "AerDoge"]
    var smallPresetIncrement: Int = 5
    var mediumPresetIncrement: Int = 50
    var largePresetIncrement: Int = 100
    
    
    var initialAmt: Int = 10
    var ceilingAmt: Int = 1000
    
    func printInformation() {
        print("[VC] This is \(currencyName) - \(currencyDescription)")
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

class InMobiDollars: Currency {
    
    var currencyName: String = "InMobi Dollars"
    var shortName: String = "IMD"
    var currencyDescription: String = "Dollars that you redeem for interesting quirky products!"
    var rewards: Array<String> = ["Mobius Strip", "Mobi Deck", "Trip to Asia"]
    var smallPresetIncrement: Int = 25
    var mediumPresetIncrement: Int = 100
    var largePresetIncrement: Int = 300
    var initialAmt: Int = 50
    var ceilingAmt: Int = 5000
    
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
