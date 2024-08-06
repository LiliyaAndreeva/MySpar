//
//  MySparApp.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

@main
struct MySparApp: App {
	@StateObject private var gridModel = GridListViewModel()

	
	//let model: GridItemModel = ModelMager().fetchCell().first
    var body: some Scene {
        WindowGroup {
			ContentView()
				.environmentObject(gridModel)
        }
    }
}
