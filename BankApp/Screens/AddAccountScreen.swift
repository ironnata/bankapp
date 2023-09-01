//
//  AddAccountScreen.swift
//  BankApp
//
//  Created by Jongmo You on 24.08.23.
//  Copyright © 2023 Mohammad Azam. All rights reserved.
//

import SwiftUI

struct AddAccountScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject private var addAccountVM = AddAccountViewModel()
    
    var body: some View {
        Form {
            TextField("Name", text: self.$addAccountVM.name)
            Picker(selection: self.$addAccountVM.accountType, label: EmptyView()) {
                ForEach(AccountType.allCases, id: \.self) { accountType in
                    Text(accountType.title).tag(accountType)
                }
            }.pickerStyle(SegmentedPickerStyle())
            TextField("Balance", text: self.$addAccountVM.balance)
            
            HStack {
                Spacer()
                Button("Submit") {
                    self.addAccountVM.createAccount { success in
                        if success {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    }
                }
                Spacer()
            }
            
            Text(self.addAccountVM.errorMessage)
        }
        .navigationTitle("Add Account")
        .embedInNavigationView()
    }
}

struct AddAccountScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddAccountScreen()
    }
}
