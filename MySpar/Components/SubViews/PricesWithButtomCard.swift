//
//  PricesWithButtomCard.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct PricesWithButtomCard: View {
	let text: String
	let action: () -> Void
    var body: some View {
		HStack{
			VStack(alignment: .leading, spacing: 0){
				Prices(text: text)
				Text(ConstantStrings.Text.cop)
					.strikethrough()
					.foregroundStyle(.gray)
					.frame(width: 67, height: 14, alignment: .leading)
			}
			Spacer()
			ButtonCart(width: 48, height: 36, action: { action() })
		}
    }
}

#Preview {
	PricesWithButtomCard(text: "256", action: {})
}
