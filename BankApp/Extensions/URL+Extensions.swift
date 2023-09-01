


import Foundation

extension URL {
    
    static func urlForAccounts() -> URL? {
         return URL(string: "https://sapphire-flash-echidna.glitch.me/api/accounts")
    }
    
    static func urlForCreateAccounts() -> URL? {
        return URL(string: "https://sapphire-flash-echidna.glitch.me/api/accounts")
    }
    
    static func urlForTransferFunds() -> URL? {
        return URL(string: "https://sapphire-flash-echidna.glitch.me/api/transfer")
    }
}
