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
					.cornerRadius(40)
					.frame(width: width, height: height)
					.foregroundColor(.green)
				Image(ConstantStrings.Icons.cart)
					.resizable()
					.frame(width: Sizes.iconSizes.iconSize, height: Sizes.iconSizes.iconSize)
			}
		}
    }
}

#Preview {
	ButtonCart(width: 48, height: 36, action: {} )
}
