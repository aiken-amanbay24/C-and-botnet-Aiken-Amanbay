import SwiftUI

struct DetailRow: View {
    let title: String
    let value: String
    let icon: String

    var body: some View {
        HStack(spacing: Spacing.sm) {
            Image(systemName: icon)
                .font(.body)
                .foregroundStyle(.secondary)
                .frame(width: 24)

            Text(title)
                .foregroundStyle(.secondary)

            Spacer()

            Text(value)
                .font(.body.weight(.semibold))
        }
    }
}
