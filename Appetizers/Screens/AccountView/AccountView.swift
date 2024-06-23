//
//  AccountView.swift
//  Appetizers
//
//  Created by John Patrick Echavez on 6/14/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    
    var body: some View {
        NavigationView{
            Form {
                Section("Personal Info") {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                    DatePicker("Birthday",
                               selection: $viewModel.user.birthDate,
                               displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    }label: {
                        Text("Save Changes")
                    }
                }
                
               
                Section("Request") {
                    Toggle(isOn: $viewModel.user.extraNapkins, label: {
                        Text("Extra Napkins")
                    })
                    Toggle(isOn: $viewModel.user.frequentRefills) {
                        Text("Frequent Refills")
                    }
                }
                .tint(Color.brandPrimary)
              
            }
            .onAppear {
                viewModel.retrieveUser()
            }
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        
            .navigationTitle("Account")
        }
    }
}


#Preview {
    AccountView()
}
