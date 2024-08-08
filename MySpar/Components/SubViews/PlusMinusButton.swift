//
//  PlusMinusButton.swift
//  MySpar
//
//  Created by Лилия Андреева on 06.08.2024.
//

import SwiftUI

struct PlusMinusButton: View {
	let minusAction: () -> Void

    var body: some View {
		ZStack(alignment: .center){
			RoundedRectangle(cornerRadius: Sizes.cornerRadius.sCornerRadius)
				.frame(height: Sizes.iconSizes.height)
				.foregroundColor(.greenColor)
			  
			HStack(alignment: .center, spacing: 20) {
				Button(action: { minusAction ()}, label: {
					Image(ConstantStrings.Icons.minus)
				})
				
				VStack(alignment: .center,spacing: 0){
					Text(ConstantStrings.Text.weight)
						.font(.system(size: Sizes.fontSizes.mediumSize, weight: .bold))
					Text(ConstantStrings.Text.sum)
						.opacity(Sizes.opacityValue.light)
						.font(.system(size: Sizes.fontSizes.mSize))
				}
				.foregroundColor(.white)
				Button(action: { minusAction ()}, label: {
					Image(ConstantStrings.Icons.plus)
				})
			}
		}
    }
}

#Preview {
	PlusMinusButton(minusAction: {})
}
