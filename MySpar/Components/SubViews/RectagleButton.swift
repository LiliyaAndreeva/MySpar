//
//  RectangleButtoms.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct RectagleButton: View {
	let width: CGFloat
	let height: CGFloat
	@Binding var isHeartFilled: Bool
	
	var body: some View {

		ZStack{
			Rectangle()
				.frame(width: width, height: height)
				.foregroundColor(.white)
				.opacity(0.4)
				.cornerRadius(16)
			VStack{
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Image(ConstantStrings.Icons.checkIcon)
						.resizable()
						.scaledToFit()
						.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)
				})
				Button(action: {
					isHeartFilled.toggle()
				}, label: {
					Image(ConstantStrings.Icons.heardIcon)
						.resizable()
						.scaledToFit()
						.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)
						.foregroundColor(isHeartFilled ? Color.green : Color.black)
				})


			}
		}
	}
}
