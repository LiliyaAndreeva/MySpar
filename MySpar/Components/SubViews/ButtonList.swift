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
					.frame(width: Sizes.frameSizes.lsIcon, height: Sizes.frameSizes.lsIcon)
					.foregroundStyle(.gray)
					.opacity(Sizes.opacityValue.hard)
				Image(isFrame ? ConstantStrings.Icons.frame : ConstantStrings.Icons.chips)
					.resizable()
					.scaledToFit()
					.frame(width: Sizes.frameSizes.sIcon, height: Sizes.frameSizes.sIcon)
			}
		}
	}
}

#Preview {
	ButtonList(isFrame: .constant(false))
}
