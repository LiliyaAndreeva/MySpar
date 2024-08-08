//
//  CustomTabelCell.swift
//  MySpar
//
//  Created by Лилия Андреева on 07.08.2024.
//

import SwiftUI

struct CustomTabelCell: View {
	@State private var isPlusMinusShown = false
	@State private var isSwitchShown = Bool.random()
	
	let model: GridItemModel
	let multipleWidth = Sizes.width / 375
	let multipleHeigth = Sizes.height / 800

	var body: some View {
		let sizeWidth = 144 * multipleWidth
		let sizeHeight = 144 * multipleHeigth
		HStack {
			VStack {
				ZStack {
					Image(model.productImage)
						.resizable()
						.scaledToFit()
						.frame(width: sizeWidth, height: sizeWidth)
						.cornerRadius(Sizes.cornerRadius.xsCornerRadius)
					VStack{
						HStack{
							if let flagImage = model.flagLabel {
								Image(flagImage)
									.clipShape(FlagFrame(sizeOfRadius: Sizes.cornerRadius.xsCornerRadius))
							}
							Spacer()
						}
						Spacer()
						HStack(){
							Spacer()
							DiscontLabel(text: model.discountLabel)
						}
					}
				}
			}
			.frame(width: sizeWidth, height: sizeWidth)
			Spacer()
			VStack(alignment: .leading){
				HStack(alignment: .top){
					VStack(alignment: .leading){
						HStack(spacing: 0){
							Range()
							Text(ConstantStrings.Text.fidback)
								.font(.system(size: Sizes.fontSizes.sSize))
								.foregroundStyle(.gray)
						}
						Text(model.title)
							.font(.system(size: Sizes.fontSizes.sSize))
						Text(model.countryLabel)
							.foregroundStyle(.gray)
							.font(.system(size: Sizes.fontSizes.sSize))
					}
					Spacer()
					RectagleWithTwoIcons()
				}
				ZStack{
					VStack(alignment: .leading){
						Spacer()
						if isPlusMinusShown && isSwitchShown {
							CustomSwitch()
						}
						Spacer()
						ZStack {
							PricesWithButtomCard(text: model.price) {
								isPlusMinusShown.toggle()
							}
							.opacity(isPlusMinusShown ? 0 : 1)
							.frame(alignment: .bottom)
							if isPlusMinusShown  {
								PlusMinusButton(minusAction: {
									isPlusMinusShown.toggle()
								})
							}
						}
					}
				}
			}
			.frame(width: 199 * multipleWidth, height: sizeHeight)
		}
		.frame(maxWidth: .infinity, alignment: .leading)
	}
}

#Preview {
	CustomTabelCell(model: ItemManager().fetchCell().first!)
}
