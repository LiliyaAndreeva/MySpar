//
//  PricesWithButtomCard.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct PricesWithButtomCard: View {
	let text: String
    var body: some View {
		HStack{
			Prices(text: text)
			Spacer()
			ButtonCart(width: 48, height: 36, action: {})
		}
    }
}

#Preview {
    PricesWithButtomCard(text: "256")
}
