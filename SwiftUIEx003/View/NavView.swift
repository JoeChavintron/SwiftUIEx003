//
//  ContentView.swift
//  test
//
//  Created by posri chavintron on 8/1/2566 BE.
//

import SwiftUI

struct NavView: View {

//	@EnvironmentObject var testModel: TestModel

	@Binding var color: Color

	var body: some View {
		HStack(alignment: .center) {
			Text("Genshin")
				.font(.largeTitle)
				.foregroundColor(Color.white)
				.frame(maxWidth: .infinity)
		}
		.frame(maxWidth: .infinity,maxHeight: 60)
		.background(color)
	}
}

struct NavView_Previews: PreviewProvider {
	static var previews: some View {
		NavView(color: .constant(.red))
	}
}
