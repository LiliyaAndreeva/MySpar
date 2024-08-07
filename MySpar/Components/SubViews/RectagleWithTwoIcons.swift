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
					.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)
					.opacity(0.8)
			})
			.frame(width: 32, height: 32)
			Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
				Image(ConstantStrings.Icons.heardIcon)
					.resizable()
					.scaledToFit()
					.frame(width: Sizes.iconSizes.size, height: Sizes.iconSizes.size)
					.opacity(0.8)
			})
			.frame(width: 32, height: 32)
		}
	}
}

#Preview {
	RectagleWithTwoIcons()
}
