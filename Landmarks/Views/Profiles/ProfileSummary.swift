//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Samuel Pitoňák on 21/01/2024.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)

                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")

                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
}
