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
	static let padding: Double = 5

	enum cornerRadius{
		static let xxsCornerRadius: Double = 12
		static let xsCornerRadius: Double = 16
		static let sCornerRadius: Double = 40
	}

	enum fontSizes {
		static let xsSize: Double = 9
		static let sSize: Double = 12
		static let mSize: Double = 14
		static let normalSize: Double = 16
		static let mediumSize: Double = 17
	}

	enum frameSizes {
		static let xsIcon: Double = 16
		static let sIcon: Double = 18
		static let lsIcon: Double = 40
	}

	enum iconSizes{
		static let xsIconSize: Double = 16
		static let mIconSize: Double = 24
		static let lIconSize: Double = 36
		static let height: Double = 36
		static let width: Double = 48
	}
	
	enum opacityValue {
		static let hard: Double = 0.2
		static let low: Double = 0.4
		static let medium: Double = 0.6
		static let light: Double = 0.8
	}
}
