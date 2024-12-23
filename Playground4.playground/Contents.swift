class VirtualBank {
    
    var accountType = ""
    var isOpened = true
    func greeting(){
        print("Welcome to your virtual bank systen!\n")
    }

    func defineAccountType(){
         print("What kind of account would you like to open?\n" +
            "1. Debit account\n" +
            "2. Credit account\n")
    }
    
    func inputAccountType(numberPadKey: Int){
        print("The selected type is \(numberPadKey)")
            switch numberPadKey{
            case 1: accountType = "Debit"
            case 2: accountType = "Credit"
            default : print("Invalid input: \(numberPadKey). Please try again\n")
                return
            }
        print("You have opened a \(accountType) account\n")
    }
    
    func moneyTransfer(transferType: String, transferAmount: Int, bankAccount: inout BankAccount){
        switch transferType{
        case "withdraw":
            if accountType == "Credit" {
                bankAccount.creditWithdraw(transferAmount)
            } else if accountType == "Debit"{
                bankAccount.debitWithdraw(transferAmount)
            }
        case "deposit":
            if accountType == "Debit"{
                bankAccount.debitDeposit(transferAmount)
            } else if accountType == "Credit"{
                bankAccount.creditDeposit(transferAmount)
            }
        default: print("Invalid input: \(transferType).")
                break
        }
    }
    
    func checkBalance (bankAccount: BankAccount) {
        switch accountType{
        case "Debit": print(bankAccount.debitBalanceInfo)
        case "Credit": print(bankAccount.creditBalanceInfo)
        default: print("Invalid input: \(accountType).")
            break
        }
    }
            
}


struct BankAccount{
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    
    var debitBalanceInfo: String {
        "Debit balance: \(debitBalance)€"
    }
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    
    var creditBalanceInfo: String {
        "Available credit: \(availableCredit)€"
    }
    
    mutating func debitDeposit(_ amount: Int){
        debitBalance += amount
        if amount>0 {
            print("Deposited \(amount)€. \(debitBalanceInfo)")
        }
    }
    
    mutating func creditDeposit(_ amount: Int){
        creditBalance += amount
        if amount>0 {
            print("Deposited \(amount)€. \(creditBalanceInfo)")
        }
        if creditBalance == 0 {
            print("Paid off credit balance")
        } else if creditBalance > 0 {
            print("Overpaid credit balance")
        } else {
            print("Credit balance negative")
        }
    }
    
    mutating func debitWithdraw (_ amount: Int) {
        if amount > debitBalance {
            print("Insufficient funds to withdraw \(amount)€. \(debitBalanceInfo)")
        } else {
            debitBalance -= amount
            print("Debit withdraw: \(amount)€. \(debitBalanceInfo)")
        }
    }
    
    mutating func creditWithdraw (_ amount: Int) {
        if amount > availableCredit {
            print("Insufficient funds to withdraw \(amount)€. \(creditBalanceInfo))")
        } else {
            creditBalance -= amount
            print("Credit withdraw: \(amount)€. \(creditBalanceInfo)")
        }
    }
    
}

var CaixaBank = VirtualBank()
CaixaBank.greeting()

repeat{
    CaixaBank.defineAccountType()
    CaixaBank.inputAccountType(numberPadKey: Int.random(in: 1...3))
} while (CaixaBank.accountType == "")


let transferAmount = 50
print("Transfer amount: $\(transferAmount)")
var imaginAccount = BankAccount()



repeat{
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4.Close the system")
    print()
    
    let option = Int.random(in: 1...4)
    print("\(option)")
    
    switch option {
    case 1:
        CaixaBank.checkBalance(bankAccount: imaginAccount)
        print()
    case 2:
        CaixaBank.moneyTransfer(transferType: "withdraw", transferAmount: transferAmount, bankAccount: &imaginAccount)
        print()
    case 3:
        CaixaBank.moneyTransfer(transferType: "deposit", transferAmount: transferAmount, bankAccount: &imaginAccount)
        print()
    case 4:
        CaixaBank.isOpened = false
        print("The system is closed")
    default:
        print("Invalid option")
        break
    }
} while CaixaBank.isOpened



/*var ImaginAccount = BankAccount()
print(ImaginAccount.debitBalanceInfo)

ImaginAccount.debitDeposit(100)
ImaginAccount.debitWithdraw(20)
ImaginAccount.debitWithdraw(81)

print("\n")
print(ImaginAccount.creditBalanceInfo)
ImaginAccount.creditWithdraw(101)
ImaginAccount.creditWithdraw(100)
ImaginAccount.creditDeposit(50)
ImaginAccount.creditDeposit(50)
ImaginAccount.creditDeposit(40)
ImaginAccount.creditWithdraw(50)
ImaginAccount.creditDeposit(10)


print("\n")
print("\n")
*/


