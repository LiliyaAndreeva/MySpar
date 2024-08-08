//
//  CustomDivider.swift
//  MySpar
//
//  Created by Лилия Андреева on 08.08.2024.
//

import SwiftUI
struct CustomDivider: View {
	var body: some View {
		Rectangle()
			.fill(Color.gray)
			.opacity(Sizes.opacityValue.low)
			.frame(height: 1)
	}
}
