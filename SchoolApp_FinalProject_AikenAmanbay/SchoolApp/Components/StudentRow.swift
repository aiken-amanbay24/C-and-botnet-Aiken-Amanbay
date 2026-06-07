import SwiftUI

struct StudentRow: View {
    let name: String
    let gpa: Double

    var body: some View {
        HStack(spacing: Spacing.sm) {
            Image(systemName: "person.circle.fill")
                .font(.title2)
                .foregroundStyle(.secondary)

            VStack(alignment: .leading, spacing: Spacing.xxs) {
                Text(name)
                    .font(.headline)
                Text("GPA: \(String(format: "%.1f", gpa))")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()
        }
        .padding(.vertical, Spacing.xxs)
    }
}
