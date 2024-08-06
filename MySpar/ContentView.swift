//
//  ContentView.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct ContentView: View {
	@StateObject private var viewModel = GridListViewModel()
	
    var body: some View {
		
				VStack {

					GridView(viewModel: viewModel)
							
					
				}
			}

}

//#Preview {
//    ContentView()
//}
