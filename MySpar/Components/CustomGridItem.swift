//
//  GridItem.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI
struct CustomGridItem: View {
	
	let model: GridItemModel
	
	@State private var isHeartFilled = false //!!!
	
	let multipleWidth = Sizes.width / 375
	let multipleHeigth = Sizes.height / 800
	
	
	var body: some View {
		let sizeWidth = 168 * multipleWidth
		let sizeHeight = 278 * multipleHeigth
		let sizeSmallRectangleHeght = 64 * multipleHeigth
		let sizeSmallRectangleWidth = 32 * multipleHeigth
		
		
		VStack{
			ZStack{
				Rectangle()
					.frame(width: sizeWidth, height: sizeHeight)
					.foregroundColor(.white)
					.cornerRadius(Sizes.cornerRadius)
					.shadow(
						color: .gray,
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
							.cornerRadius(Sizes.cornerRadius)
						VStack(){
							HStack(alignment: .top){
								if let flagImage = model.flagLabel {
									Image(flagImage)
										.clipShape(FlagFrame(sizeOfRadius: Sizes.cornerRadius))
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
							.padding([.leading, .trailing], 5)
						}
						.frame(width: sizeWidth, height: sizeWidth)
					}
					Spacer()
					VStack{
						HStack{
							VStack(alignment: .leading, spacing: 10) {
								Text(model.title)
									.font(.system(size: 12))
								
								Text(model.countryLabel)
									.foregroundStyle(.gray)
									.font(.system(size: 10))
								
							}
							Spacer()
						}
						Spacer()
						HStack {
							VStack(alignment: .leading, spacing: 0){
								Prices(text: model.price)
								Text("199")
									.strikethrough()
									.foregroundStyle(.gray)
									.frame(width: 67, height: 14, alignment: .leading)
								
							}
							Spacer()
							ButtonCart(width: 48, height: 36, action: {})
						}
					}.padding([.leading, .trailing, .bottom], 5)
				}
			}
		}
		.frame(width: sizeWidth, height: sizeHeight)
		
	}
}





#Preview {
	CustomGridItem(model: ItemManager().fetchCell().first!)
}
