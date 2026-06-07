// SchoolAppApp.swift
import SwiftUI

@main
struct SchoolAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainPage()
            }
            .tint(.accentColor)
        }
    }
}
