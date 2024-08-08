//
//  CustomSwitch.swift
//  MySpar
//
//  Created by Лилия Андреева on 08.08.2024.
//

import SwiftUI

struct CustomSwitch: View {
	@State private var selectedUnit = ConstantStrings.Text.kg
		
	let units = [ConstantStrings.Text.kg,ConstantStrings.Text.st]
		
		var body: some View {
			VStack {
				Picker("", selection: $selectedUnit) {
					ForEach(units, id: \.self) {
						Text($0)
					}
				}
				.pickerStyle(.segmented)
			}
		}
}

#Preview {
    CustomSwitch()
}
