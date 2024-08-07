//
//  GridItemViewModel.swift
//  MySpar
//
//  Created by Лилия Андреева on 06.08.2024.
//

import Foundation
final class GridListViewModel: ObservableObject {
	
	@Published var cellItems: [GridItemModel] = []
	private let itemManager: ItemManager
	
	init(itemManager: ItemManager = ItemManager()) {
		self.itemManager = itemManager
		fetchData()
	}
	

	func fetchData() {
		cellItems = itemManager.fetchCell()
	}
}

final class ItemManager {
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
	func fetchCell() -> [GridItemModel] {

		for _ in 0..<17 {
			let randomImage = ItemManager.productImages.randomElement()!
			let randomTitle = ItemManager.titles.randomElement()!
			let randomPrice = Int.random(in: 99..<2600)
			let randomFlag = ItemManager.flags.randomElement()!

			let item = GridItemModel(
				productImage: randomImage,
				title: randomTitle,
				price: "\(randomPrice)", // Генерируем случайную цену
				flagLabel: Bool.random() ? randomFlag : nil,
				discountLabel:  Bool.random() ? "25%" : "",
				countryLabel:  Bool.random() ? "Франция   🇫🇷" : ""
			)
			cellItems.append(item)
		}
		return cellItems
	}
}
