//
//  GridItemModel.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import Foundation

struct GridItemModel: Identifiable {
	let id = UUID()
	let productImage: String
	let title: String
	let price: String
	let flagLabel: String?
	let discountLabel: String
	let countryLabel: String
}



