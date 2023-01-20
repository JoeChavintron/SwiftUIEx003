import SwiftUI

class ProfileViewModel: ObservableObject {
	@Published var profiles: [Profile] = load("Profile.json")
}
