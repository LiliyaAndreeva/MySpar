//
//  ButtonList.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct ButtonList: View {
	@Binding var isFrame: Bool

	var body: some View {
		Button(action: {
			isFrame.toggle()

		}) {
			ZStack{
				RoundedRectangle(
					cornerSize: CGSize(
						width: Sizes.cornerRadius.xxsCornerRadius,
						height: Sizes.cornerRadius.xxsCornerRadius
					)
				)
					.frame(width: 40, height: 40)
					.foregroundStyle(.gray)
					.opacity(0.6)
				Image(isFrame ? ConstantStrings.Icons.frame : ConstantStrings.Icons.chips)
					.resizable()
					.scaledToFit()
					.frame(width: 18, height: 18)
			}
		}
	}
}

#Preview {
	ButtonList(isFrame: .constant(false))
}
