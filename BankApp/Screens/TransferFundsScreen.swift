//
//  TransferFundsScreen.swift
//  BankApp
//
//  Created by Jongmo You on 25.08.23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct TransferFundsScreen: View {
    
    @ObservedObject private var transferFundsVM = TransferFundsViewModel()
    
    var body: some View {
        VStack {
            AccountListView(accounts: self.transferFundsVM.accounts)
            
                .onAppear {
                    self.transferFundsVM.populateAccounts()
            }
        }
    }
}

struct TransferFundsScreen_Previews: PreviewProvider {
    static var previews: some View {
        TransferFundsScreen()
    }
}
