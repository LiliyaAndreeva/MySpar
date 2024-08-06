//
//  GridItem.swift
//  MySpar
//
//  Created by Лилия Андреева on 05.08.2024.
//

import SwiftUI
struct GridItem: View {
	
	let multipleWidth = Sizes.width / 375
	let multipleHeigth = Sizes.height / 800
	@State private var isHeartFilled = false
	
	
	var body: some View {
		let sizeWidth = 168 * multipleWidth
		let sizeHeight = 278 * multipleHeigth
		let sizeSmallRectangleHeght = 64 * multipleHeigth
		let sizeSmallRectangleWidth = 32 * multipleHeigth
		
		VStack{
			ZStack{
				Rectangle()
					.frame(width: sizeWidth, height: sizeHeight)
					.foregroundColor(.yellow)
					.cornerRadius(Sizes.cornerRadius)
					.shadow(
						color: .gray,
						radius: Sizes.shadowSizes,
						x: Sizes.shadowSizes,
						y: Sizes.shadowSizes
					)
				VStack{
					ZStack{
						Image(ConstantStrings.Pictures.pictureOne)
							.resizable()
							.scaledToFit()
							.frame(width: sizeWidth, height: sizeWidth)
							.cornerRadius(Sizes.cornerRadius)
						VStack(){
							HStack(alignment: .top){
								Image(ConstantStrings.Pictures.flag)
									.clipShape(FlagFrame(sizeOfRadius: Sizes.cornerRadius))
								Spacer()
								RectagleButton(
									width: sizeSmallRectangleWidth,
									height: sizeSmallRectangleHeght,
									isHeartFilled: $isHeartFilled
								)
							}
							Spacer()
							VStack{
								HStack{
									Range()
									Spacer()
								}
								Text("Сыр ламбер")
							}
						}.frame(width: sizeWidth, height: sizeWidth)
					}
					Spacer()
				}
			}
		}
		.frame(width: sizeWidth, height: sizeHeight)

	}
}

struct Range: View {
	var body: some View{
		HStack{
			Image(ConstantStrings.Icons.star)
			Text(ConstantStrings.Text.rangeText)
		}
	}
}


#Preview {
	GridItem()
}
