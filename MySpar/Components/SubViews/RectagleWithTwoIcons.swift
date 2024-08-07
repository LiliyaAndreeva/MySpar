//
//  RectangleButtoms.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct RectagleWithTwoIcons: View {
//	let width: CGFloat
//	let height: CGFloat
//	

	var body: some View {

		ZStack{

			VStack(spacing: 0){
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Image(ConstantStrings.Icons.checkIcon)
						.resizable()
						.scaledToFit()
						.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)
				})
				.frame(width: 32, height: 32)
				Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
					Image(ConstantStrings.Icons.heardIcon)
						.resizable()
						.scaledToFit()
						.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)
				})
				.frame(width: 32, height: 32)
			}
		}
	}
}

#Preview {
	RectagleWithTwoIcons()
}
