//
//  ContentView.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI

struct ContentView: View {
	@State private var isFrame = false
	
	var body: some View {
		VStack {
			NavigationStack {
				VStack {
					Divider()
					if isFrame {
						GridView()
							.toolbar {
								ToolbarItem(placement: .navigationBarLeading) {
									ButtonList(isFrame: $isFrame)
										.padding(.bottom, 5)
								}
							}
					} else {
						TableView()
							.toolbar {
								ToolbarItem(placement: .navigationBarLeading) {
									ButtonList(isFrame: $isFrame)
										.padding(.bottom, 5)
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
