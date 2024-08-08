//
//  ItemManager.swift
//  MySpar
//
//  Created by Лилия Андреева on 08.08.2024.
//

import SwiftUI

final class ItemManager {
	// MARK: - Public properties
	var cellItems: [GridItemModel] = []
	static let productImages = (1...17).map { String($0) }
	static let titles = [ConstantStrings.ProductTitles.cheeseLamber,
						 ConstantStrings.ProductTitles.energyDrink,
						 ConstantStrings.ProductTitles.vegetableSalad,
						 ConstantStrings.ProductTitles.dorado,
						 ConstantStrings.ProductTitles.rollJapan,
						 ConstantStrings.ProductTitles.cucumbers,
						 ConstantStrings.ProductTitles.mangoKeo,
						 ConstantStrings.ProductTitles.oilSloboda,
						 ConstantStrings.ProductTitles.pasta
]
	static let flags = [ ConstantStrings.Pictures.flag,
						 ConstantStrings.Pictures.flag2,
						 ConstantStrings.Pictures.flag3
	]

	// MARK: - Public methods
	func fetchCell() -> [GridItemModel] {

		for _ in 0..<20 {
			let randomImage = ItemManager.productImages.randomElement()!
			let randomTitle = ItemManager.titles.randomElement()!
			let randomPrice = Int.random(in: 99..<2600)
			let randomFlag = ItemManager.flags.randomElement()!

			let item = GridItemModel(
				productImage: randomImage,
				title: randomTitle,
				price: "\(randomPrice)",
				flagLabel: Bool.random() ? randomFlag : nil,
				discountLabel: Bool.random() ? ConstantStrings.Text.discont : "",
				countryLabel: Bool.random() ? ConstantStrings.Text.countryLabel : ""
			)
			cellItems.append(item)
		}
		return cellItems
	}
}

