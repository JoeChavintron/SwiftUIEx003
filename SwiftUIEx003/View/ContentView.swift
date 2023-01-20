//
//  ContentView.swift
//  test
//
//  Created by posri chavintron on 8/1/2566 BE.
//

import SwiftUI

struct ContentView: View {

	@State private var rawInput: String = "0"
	@State private var rawColor: Color = .green

	var body: some View {
		VStack() {
			NavView(color: $rawColor)
			ProfileListView2()

		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
