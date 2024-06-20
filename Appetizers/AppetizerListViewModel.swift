//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by John Patrick Echavez on 6/19/24.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                
                self.isLoading = false
                
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    self.handleError(error: error)
                }
            }
        }
    }
    
    private func handleError(error: APError) {
        switch error {
        case .invalidResponse:
            self.alertItem = AlertContext.invalidResponse
            
        case .invalidURL:
            self.alertItem = AlertContext.invalidURL
            
        case .invalidData:
            self.alertItem = AlertContext.invalidData
            
        case .unableToComplete:
            self.alertItem = AlertContext.unableToComplete
        }
    }

}
