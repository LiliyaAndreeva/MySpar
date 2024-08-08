//
//  Sizes.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

enum Sizes {
	static let height = UIScreen.main.bounds.height
	static let width = UIScreen.main.bounds.width
	static let shadowSizes: CGFloat = 3
	
	enum cornerRadius{
		static let xxsCornerRadius: CGFloat = 12
		static let xsCornerRadius: CGFloat = 16
		static let sCornerRadius: CGFloat = 40
	}
	enum fontSizes {
		static let xsSize: Double = 9
		static let sSize: Double = 12
		static let mSize: Double = 14
		static let normalSize: Double = 16
	}

	enum iconSizes{
		static let size: CGFloat = 24
		static let iconSize: CGFloat = 16
	}
}
