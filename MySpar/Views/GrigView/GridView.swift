//
//  GridView.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct GridView: View {
	// MARK: - Public properties
	@StateObject var viewModel: GridListViewModel

	// MARK: - Initialization
	init(itemManager: ItemManager = ItemManager()) {
		_viewModel = StateObject(wrappedValue: GridListViewModel(itemManager: itemManager))
	}

	// MARK: - Public methods
	private let columns = Array(
		repeating: GridItem(.flexible()),
		count: 2
	)

	var body: some View {
		
		ScrollView{
			LazyVGrid(columns: columns) {
				ForEach(viewModel.cellItems) { item in
					CustomGridItem(model: item)
				}
			}
		}
	}
}

#Preview {
	GridView()
}
