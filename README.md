# aervserv-vc-dependencyInjected
My practice for implementing dependency injection for a virtual currency.


The main file to care about here is: VCWallet.swift

I defined a prototype:

~~~~
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
  
  ~~~~


And then had some currencies implement that prototype:

~~~~

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

~~~~


The main class which allows us to 'inject' any currency into the wallet (hence being very loosely coupled and modular)

~~~~

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

~~~~

Finally, running some function calls on the below to prove this:


~~~~
// printVCBank() will return the following. Note that all of the wallets have been instantiated with a difference currency injected. 

[VC-VCWallet] VC Wallet - retrieving stats
[VC] This is AerServ Coins - Coins that you can use in the AerServ Market!
This wallet's balance: 10 ASC
[VC-VCWallet] VC Wallet - retrieving stats
[VC] This is InMobi Dollars
This wallet's balance: 50 IMD
[VC-VCWallet] VC Wallet - retrieving stats
[VC] This is Gold
This wallet's balance: 2 G

~~~~
