//
//  CustomTabelCell.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct CustomTabelCell: View {
	let model: GridItemModel
	
	let multipleWidth = Sizes.width / 375
	let multipleHeigth = Sizes.height / 800
	
	
	var body: some View {
		let sizeWidth = 144 * multipleWidth
		//let sizeHeight = 278 * multipleHeigth
		let sizeSmallRectangleHeght = 64 * multipleHeigth
		let sizeSmallRectangleWidth = 32 * multipleHeigth

		HStack {
					VStack {
						ZStack {
							Image(model.productImage)
								.resizable()
								.scaledToFit()
								.frame(width: sizeWidth, height: sizeWidth)
								.cornerRadius(Sizes.cornerRadius)
							VStack{
								HStack{
									if let flagImage = model.flagLabel {
										Image(flagImage)
											.clipShape(FlagFrame(sizeOfRadius: Sizes.cornerRadius))
									}
									Spacer()
								}
								Spacer()
								HStack{
									Spacer()
									DiscontLabel(text: model.discountLabel)
								}
							}
						}
					}
					.frame(width: 144, height: 144)
			Spacer()
			VStack(alignment: .leading){
				HStack{
					VStack(alignment: .leading){
						HStack(spacing: 0){
							Range()
							Text(ConstantStrings.Text.fidback)
								.font(.system(size: 12))
								.foregroundStyle(.gray)
						}
						Text(model.title)
							.font(.system(size: 12))
						Text(model.countryLabel)
							.foregroundStyle(.gray)
							.font(.system(size: 10))
					}
					Spacer()
					RectagleWithTwoIcons()
				}
				Spacer()
				PricesWithButtomCard(text: model.price)
			}
			.frame(width: 199, height: 144)
			}
		.frame(width: 375, height: 176)
		}
	}


#Preview {
	CustomTabelCell(model: ItemManager().fetchCell().first!)
}
