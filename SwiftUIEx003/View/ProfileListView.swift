//
//  ProfileListView.swift
//  test
//
//  Created by posri chavintron on 17/1/2566 BE.
//

import SwiftUI

struct ProfileListView: View {

	@StateObject var profileList: ProfileViewModel

	var body: some View {
		List(profileList.profiles) { profile in
			   ProfileView(profile: profile)
		   }
	}
}

struct ProfileListView2: View {

	@State private var profiles: [Profile] = [Profile]()

	var body: some View {
		List(profiles) { profile in
			ProfileView(profile: profile)
		}
		.task {
			await loadProfile()
		}
	}

	func loadProfile() async {
		profiles = load("Profile.json")
	}
}

struct ProfileListView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileListView2()
	}
}
