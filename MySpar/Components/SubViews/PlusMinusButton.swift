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
				.frame(height: 36)
				.foregroundColor(.green)
			  
			HStack(alignment: .center, spacing: 20  ) {
				Button(action: { minusAction ()}, label: {
					Image(ConstantStrings.Icons.minus)
				})
				
				VStack(alignment: .center,spacing: 0){
					Text("0.1 кг")
						.font(.system(size: 17, weight: .bold))
					Text("~ 120,0 ₽")
						.opacity(0.8)
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
	PlusMinusButton(minusAction: {}/*, size: 160*/)
}
