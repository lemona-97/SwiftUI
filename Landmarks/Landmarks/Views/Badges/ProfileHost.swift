//
//  ProfileHost.swift
//  Landmarks
//
//  Created by wooseob on 10/24/23.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            ProfileSummary(profile: draftProfile)
        })
        .padding()
    }
}

#Preview {
    ProfileHost()
}
