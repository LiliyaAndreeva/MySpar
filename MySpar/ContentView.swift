//
//  ContentView.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct ContentView: View {
	@State private var isFrame = true
	
	var body: some View {
		VStack {
			NavigationStack {
				VStack {   
					CustomDivider()
					if isFrame {
						GridView()
							.toolbar {
								ToolbarItem(placement: .navigationBarLeading) {
									ButtonList(isFrame: $isFrame)
										.padding(.bottom, Sizes.padding)
								}
							}
					} else {
						TableView()
							.toolbar {
								ToolbarItem(placement: .navigationBarLeading) {
									ButtonList(isFrame: $isFrame)
										.padding(.bottom, Sizes.padding)
								}
							}
					}
				}
			}
		}
	}
}

#Preview {
	ContentView()
}
