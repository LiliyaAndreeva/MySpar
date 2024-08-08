//
//  GridItemViewModel.swift
//  MySpar
//
//  Created by Лилия Андреева on 06.08.2024.
//

import Foundation
final class GridListViewModel: ObservableObject {

	// MARK: - Public properties
	@Published var cellItems: [GridItemModel] = []

	// MARK: - Dependencies
	private let itemManager: ItemManager

	// MARK: - Initialization
	init(itemManager: ItemManager = ItemManager()) {
		self.itemManager = itemManager
		fetchData()
	}

	// MARK: - Public methods
	func fetchData() {
		cellItems = itemManager.fetchCell()
	}
}

