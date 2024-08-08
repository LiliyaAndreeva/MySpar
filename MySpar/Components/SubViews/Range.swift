//
//  Range.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct Range: View {
	var body: some View{
		HStack(spacing: 3) {
			Image(ConstantStrings.Icons.star)
			Text(ConstantStrings.Text.rangeText)
				.font(.system(size: Sizes.fontSizes.sSize))
		}
		.frame(height: 20)
	}
}

#Preview {
    Range()
}
