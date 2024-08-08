//
//  DiscontLabel.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct DiscontLabel: View {
	let text: String
	var body: some View {
		Text(text)
			.foregroundStyle(.red)
			.font(.system(size: Sizes.fontSizes.normalSize))
			.fontWeight(.semibold)
	}
}

#Preview {
	DiscontLabel(text: "25%")
}
