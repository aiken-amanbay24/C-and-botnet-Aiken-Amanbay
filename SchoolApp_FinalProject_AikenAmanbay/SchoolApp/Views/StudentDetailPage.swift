// Views/StudentDetailPage.swift
import SwiftUI

struct StudentDetailPage: View {
    let studentName: String
    let gpa: Double

    var nameLength: Int {
        studentName.count
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Spacing.lg) {
                VStack(alignment: .leading, spacing: Spacing.xxs) {
                    Text(studentName)
                        .font(.largeTitle.bold())
                        .foregroundStyle(.primary)

                    Text("Student")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                VStack(spacing: Spacing.sm) {
                    DetailRow(
                        title: "Academic Performance:",
                        value: "GPA \(String(format: "%.1f", gpa))",
                        icon: "chart.bar.fill"
                    )

                    Divider()

                    DetailRow(
                        title: "Name Analysis:",
                        value: "\(nameLength) letters long",
                        icon: "textformat"
                    )
                }
                .cardStyle()
            }
            .padding(Spacing.md)
        }
        .background(AppColors.groupedBackground)
        .navigationTitle("Details")
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
    }
}
