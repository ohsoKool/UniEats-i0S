//
//  UniEatsPageApp.swift
//  UniEatsPage
//
//  Created by Rishikesh Gunda on 9/15/25.
//
import SwiftUI

@main
struct UniEatsPageApp: App {
    init() {
        print("The Application has started!")
        UIView.appearance().overrideUserInterfaceStyle = .light
    }

    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
