// Models/Student.swift
import Foundation

// Identifiable нужен SwiftUI, чтобы автоматически понимать, какая строка в List обновилась
struct Student: Identifiable {
    let id = UUID()
    var name: String
    var gpa: Double
}
