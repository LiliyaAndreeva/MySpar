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
			}
			Spacer()
			ButtonCart(width: Sizes.iconSizes.width, height: Sizes.iconSizes.height, action: { action() })
		}
    }
}

#Preview {
	PricesWithButtomCard(text: "256", action: {})
}
