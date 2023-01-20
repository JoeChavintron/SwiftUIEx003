import Foundation
import SwiftUI

class Profile: Codable,Identifiable {
	var id: String {
		profileImage
		}
	var profileImage: String
	var fullName: String
	var info: String
}
