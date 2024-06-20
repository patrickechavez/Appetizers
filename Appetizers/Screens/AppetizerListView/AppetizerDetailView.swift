//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by John Patrick Echavez on 6/20/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    
                    VStack(spacing: 5) {
                        Text("Calories")
                            .font(.caption)
                            .fontWeight(.bold)
                        
                        Text("\(appetizer.calories)")
                            .foregroundStyle(Color.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .font(.caption)
                            .fontWeight(.bold)
                        
                        Text("\(appetizer.carbs)")
                            .foregroundStyle(Color.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .font(.caption)
                            .fontWeight(.bold)
                        
                        Text("\(appetizer.protein)")
                            .foregroundStyle(Color.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    
                }
            }
            
            Spacer()
            
            Button {
                print("Button Tapped")
            }label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundStyle(Color.white)
                    .background(Color.brandPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(Button {
            print("dismiss")
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color(.white))
                    .opacity(0.6)
                    
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundStyle(Color.black)
            }
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
