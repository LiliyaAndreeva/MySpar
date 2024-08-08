//
//  TableView.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct TableView: View {
	@StateObject var viewModel: GridListViewModel

	init(itemManager: ItemManager = ItemManager()) {
		_viewModel = StateObject(
			wrappedValue: GridListViewModel(itemManager: itemManager)
		)
	}

	var body: some View {
		VStack {
			ScrollView{
				ForEach(viewModel.cellItems) { item in
					CustomTabelCell(model: item)
					Divider()
				}
			}
		}
		
	}
}

#Preview {
	TableView()
}
