//
//  FlagLabel.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct FlagLabel: View {
	let text: String
	var body: some View {
		HStack{
			Text(text)
				.foregroundStyle(.gray)
				.font(.system(size: Sizes.fontSizes.xsSize))
			
			Image(ConstantStrings.Pictures.franceFlag)
				.resizable()
				.frame(width: Sizes.iconSizes.iconSize,height: Sizes.iconSizes.iconSize)
		}
	}
}

#Preview {
	FlagLabel(text: "")
}
