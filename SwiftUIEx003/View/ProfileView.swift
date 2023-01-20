//
//  ProfileView.swift
//  test
//
//  Created by posri chavintron on 17/1/2566 BE.
//

import SwiftUI

struct ProfileView: View {

	@State var profile: Profile

	var body: some View {
		Group {
			HStack (alignment: .top) {
				Image(profile.profileImage)
					.resizable()
					.frame(width: 50,height: 50)
					.cornerRadius(25)
				VStack (alignment: .leading) {
					Text(profile.fullName)
						.frame(maxWidth: .infinity, alignment: .leading)
						.padding([.top], 0)
					Text(profile.info)
						.multilineTextAlignment(.leading)
						.lineLimit(nil)
						.frame(maxWidth: .infinity, alignment: .leading)
				}
			}

		}
	}
}

struct ProfileView_Previews: PreviewProvider {
	static var previews: some View {
		let prodfileList = ProfileViewModel()
		ProfileView(profile: prodfileList.profiles[0])
	}
}
