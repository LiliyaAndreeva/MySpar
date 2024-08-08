//
//  RectangleButtoms.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct RectagleWithTwoIcons: View {

	var body: some View {
		VStack(spacing: 0){
			Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
				Image(ConstantStrings.Icons.checkIcon)
					.resizable()
					.scaledToFit()
					.frame(width: Sizes.iconSizes.mIconSize, height: Sizes.iconSizes.mIconSize)
					.opacity(Sizes.opacityValue.light)
			})
			.frame(width: Sizes.iconSizes.lIconSize, height: Sizes.iconSizes.lIconSize)
			Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
				Image(ConstantStrings.Icons.heardIcon)
					.resizable()
					.scaledToFit()
					.frame(width: Sizes.iconSizes.mIconSize, height: Sizes.iconSizes.mIconSize)
					.opacity(Sizes.opacityValue.light)
			})
			.frame(width: Sizes.iconSizes.lIconSize, height: Sizes.iconSizes.lIconSize)
		}
	}
}

#Preview {
	RectagleWithTwoIcons()
}
