import SwiftUI

struct CardContainer: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme

    func body(content: Content) -> some View {
        content
            .padding(Spacing.md)
            .background(AppColors.secondaryGroupedBackground)
            .clipShape(RoundedRectangle(cornerRadius: Radius.md, style: .continuous))
            .shadow(
                color: .black.opacity(colorScheme == .dark ? 0 : 0.06),
                radius: 8,
                y: 2
            )
    }
}

extension View {
    func cardStyle() -> some View {
        modifier(CardContainer())
    }
}
