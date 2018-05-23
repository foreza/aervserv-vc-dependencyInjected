//
//  InMobiDollars.swift
//  DependencyInjection-VCManager
//
//  Created by Jason C on 5/22/18.
//  Copyright © 2018 Jason C. All rights reserved.
//

import Foundation

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
