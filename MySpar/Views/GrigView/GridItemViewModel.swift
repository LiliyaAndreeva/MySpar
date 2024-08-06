//
//  GridItemViewModel.swift
//  MySpar
//
//  Created by Лилия Андреева on 06.08.2024.
//

import Foundation
final class GridListViewModel: ObservableObject {
	
	@Published var cellItems: [GridItemModel] = []
	
	
	
	
}

final class ItemManager {
	var cellItems: [GridItemModel] = []
	static let productImages = [ConstantStrings.Pictures.pictureOne,
								ConstantStrings.Pictures.pictureTwo,
								ConstantStrings.Pictures.pictureThree,
								ConstantStrings.Pictures.pictureFour,
								ConstantStrings.Pictures.pictureFive,
								ConstantStrings.Pictures.pictureSix,
								ConstantStrings.Pictures.pictureSeven,
								ConstantStrings.Pictures.pictureEight,
								ConstantStrings.Pictures.pictureNine,
								ConstantStrings.Pictures.pictureTen,
								ConstantStrings.Pictures.pictureEleven,
								ConstantStrings.Pictures.pictureTwelve,
								ConstantStrings.Pictures.pictureThirteen,
								ConstantStrings.Pictures.pictureFourteen,
								ConstantStrings.Pictures.pictureFifteen,
								ConstantStrings.Pictures.pictureSixteen,
								ConstantStrings.Pictures.pictureSeventeen
	]
	static let titles = [ "сыр Ламбер 500/0 230г",
						  "Энергетический Напит",
						  "Салат Овощной с Крабовыми Палочками",
						  "Дорадо Охлажденная Непотрошеная 300-400г",
						  "Ролл Маленькая Япония 216г",
						  "Огурцы тепличные cадово-огородные",
						  "Манго Кео",
						  "Масло Слобода Рафинированное 1,8л",
						  "Макаронные Изделия SPAR Спагетти 450г",
	]
	static let flags = [ ConstantStrings.Pictures.flag,
						 ConstantStrings.Pictures.flag2,
						 ConstantStrings.Pictures.flag3
	]
	
	func fetchCell() -> [GridItemModel] {

		let randomImage = ItemManager.productImages.randomElement()!
		let randomTitle = ItemManager.titles.randomElement()!
		let randomPrice = Int.random(in: 99..<2600)
		let randomFlag = ItemManager.flags.randomElement()!

		for _ in 0..<17 {
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
