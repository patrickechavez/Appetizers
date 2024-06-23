//
//  APButton.swift
//  Appetizers
//
//  Created by John Patrick Echavez on 6/22/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(Color.white)
            .background(Color.brandPrimary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    APButton(title: "Test Title")
}
