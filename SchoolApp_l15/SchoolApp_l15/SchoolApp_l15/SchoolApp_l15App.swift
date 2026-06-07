import SwiftUI

@main // <- Именно эта строчка исправляет ошибку _main!
struct SchoolApp_l15App: App {
    var body: some Scene {
        WindowGroup {
            MainView() // Указываем, что первым делом открывается ваш MainView
        }
    }
}
