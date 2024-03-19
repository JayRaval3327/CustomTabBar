//
//  Views.swift
//  CustomTabBar
//
//  Created by Jay Raval on 2024-03-18.
//

import SwiftUI

struct ViewOne: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Home")
        }
        .padding()
    }
}

struct ViewTwo: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Messages")
        }
        .padding()
    }
}

struct ViewThree: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Profile")
        }
        .padding()
    }
}

struct ViewFour: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("View Four")
        }
        .padding()
    }
}
