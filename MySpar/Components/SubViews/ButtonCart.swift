//
//  ButtonCart.swift
//  MySpar
//
//  Created by Лилия Андреева on 06.08.2024.
//

import SwiftUI

struct ButtonCart: View {
	let width: Double
	let height: Double
	let action: ()->Void

	var body: some View {
		Button(action: action) {
			ZStack{
				Rectangle()
					.cornerRadius(Sizes.cornerRadius.sCornerRadius)
					.frame(width: width, height: height)
					.foregroundColor(.green)
				Image(ConstantStrings.Icons.cart)
					.resizable()
					.frame(width: Sizes.iconSizes.xsIconSize, height: Sizes.iconSizes.xsIconSize)
			}
		}
	}
}

#Preview {
	ButtonCart(width: 48, height: 36, action: {} )
}
