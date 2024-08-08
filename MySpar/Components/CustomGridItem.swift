//
//  GridItem.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI
struct CustomGridItem: View {
	let model: GridItemModel

	@State private var isPlusMinusShown = false
	@State private var isSwitchShown = Bool.random()

	let multipleWidth = Sizes.width / 375
	let multipleHeigth = Sizes.height / 800

	var body: some View {
		let sizeWidth = 168 * multipleWidth
		let sizeHeight = 278 * multipleHeigth

		VStack{
			ZStack{
				Rectangle()
					.foregroundColor(.white)
					.cornerRadius(Sizes.cornerRadius.xsCornerRadius)
					.shadow(
						color: .gray.opacity(0.2),
						radius: Sizes.shadowSizes,
						x: Sizes.shadowSizes,
						y: Sizes.shadowSizes
					)
				VStack{
					ZStack{
						Image(model.productImage)
							.resizable()
							.scaledToFit()
							.frame(width: sizeWidth, height: sizeWidth)
							.cornerRadius(Sizes.cornerRadius.xsCornerRadius)
						VStack(){
							HStack(alignment: .top){
								if let flagImage = model.flagLabel {
									Image(flagImage)
										.clipShape(FlagFrame(sizeOfRadius: Sizes.cornerRadius.xsCornerRadius))
								}
								Spacer()
								RectagleWithTwoIcons()
							}
							Spacer()
							HStack{
								Range()
								Spacer()
								DiscontLabel(text: model.discountLabel)
								
							}
							.padding([.leading, .trailing], Sizes.padding)
						}
					}
					ZStack(alignment: .topLeading) {
						VStack(alignment: .leading) {
							Text(model.title)
								.font(.system(size: Sizes.fontSizes.sSize))
								.multilineTextAlignment(.leading)
								.lineLimit(2)
							Spacer()
							ZStack {
								Text(model.countryLabel)
									.foregroundStyle(.gray)
									.font(.system(size: Sizes.fontSizes.sSize))
									.opacity(isPlusMinusShown && isSwitchShown ? 0 : 1)
									.zIndex(1)
								if isPlusMinusShown && isSwitchShown {
									CustomSwitch()
										.zIndex(2)
								}
							}

							ZStack {
								PricesWithButtomCard(text: model.price) {
									isPlusMinusShown.toggle()
								}
								.opacity(isPlusMinusShown ? 0 : 1)
								.frame(alignment: .bottom)
								if isPlusMinusShown {
									PlusMinusButton(minusAction: {
										isPlusMinusShown.toggle()
									})
								}
							}
						}
						.padding([.leading, .trailing, .bottom], Sizes.padding)
					}
				}
			}
		}
		.frame(width: sizeWidth, height: sizeHeight)
	}
}

#Preview {
	CustomGridItem(model: ItemManager().fetchCell().first!)
}

