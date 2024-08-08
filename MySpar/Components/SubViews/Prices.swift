//
//  Prices.swift
//  MySpar
//
//  Created by Лилия Андреева on 06.08.2024.
//

import SwiftUI
struct Prices: View {
	let text: String
	
	var body: some View {
		HStack(spacing: 0){
			Text(text)
				.font(.title2)
			VStack{
				Text("90")
					.font(.footnote)

			}.padding(.bottom, 6)
			Image(ConstantStrings.Icons.price)
				.resizable()
				.frame(width: UIFont.preferredFont(forTextStyle: .title2).pointSize,
					   height: UIFont.preferredFont(forTextStyle: .title2).pointSize)
		}
		.frame(alignment: .leading)

		
	}
}
#Preview {
	Prices(text: "256")
}
