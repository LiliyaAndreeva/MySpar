//
//  RectangleButtoms.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct RectagleWithTwoIcons: View {
	let width: CGFloat
	let height: CGFloat
	

	var body: some View {

		ZStack{
			Rectangle()
				.frame(width: width, height: height)
				.foregroundColor(.white)
				.opacity(0.4)
				.cornerRadius(16)
			VStack{
				
					Image(ConstantStrings.Icons.checkIcon)
						.resizable()
						.scaledToFit()
						.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)
			


					Image(ConstantStrings.Icons.heardIcon)
						.resizable()
						.scaledToFit()
						.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)


			}
		}
	}
}

#Preview {
	RectagleWithTwoIcons(width: 16, height: 16)
}
