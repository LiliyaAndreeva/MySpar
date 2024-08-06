//
//  FlagFrame.swift
//  MySpar
//
//  Created by Лилия Андреева on 06.08.2024.
//

import SwiftUI
struct FlagFrame: Shape {
	let sizeOfRadius: Double

	
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(
			roundedRect: rect,
			byRoundingCorners: [
				.topLeft
				
			],
			cornerRadii: CGSize(width: sizeOfRadius, height: sizeOfRadius)
		)
		return Path(path.cgPath)
	}
}
#Preview {
	FlagFrame(sizeOfRadius: 16)
}
