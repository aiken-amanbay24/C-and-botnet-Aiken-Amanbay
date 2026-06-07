// Views/MainPage.swift
import SwiftUI

struct MainPage: View {
    // Счетчик для Stage 1
    @State private var count = 0

    // Эквивалент BindingContext = new Person()
    @State private var person = Person()

    var body: some View {
        ScrollView {
            VStack(spacing: Spacing.lg) {
                // --- STAGE 1: Заголовок и Счетчик ---
                VStack(spacing: Spacing.xxs) {
                    Text("School App")
                        .font(.largeTitle.bold())
                    Text("Powered by SwiftUI")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, Spacing.md)

                VStack(spacing: Spacing.xs) {
                    Text("Status Counter: \(count)")
                        .font(.headline)
                        .contentTransition(.numericText())

                    Button("Check") {
                        count += 1
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                }
                .cardStyle()

                // --- L15 & L16: Name Card ---
                VStack(alignment: .leading, spacing: Spacing.sm) {
                    Text("Name Card")
                        .font(.title2.weight(.semibold))

                    TextField("Enter name", text: $person.name)
                        .textFieldStyle(.roundedBorder)
                        .autocorrectionDisabled()

                    Text(person.name)
                        .font(.title.bold())
                        .foregroundStyle(.accent)
                        .animation(.smooth, value: person.name)

                    Text("City: \(person.city)")
                        .font(.body)
                        .foregroundStyle(.secondary)

                    Button("Shout the name") {
                        person.name = person.name.uppercased()
                    }
                    .buttonStyle(.bordered)
                    .tint(Color("Warning"))
                }
                .cardStyle()

                // --- L14 / L17 Navigation Button ---
                NavigationLink(destination: StudentsPage()) {
                    Label("Open students list", systemImage: "person.3.fill")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }
            .padding(Spacing.md)
        }
        .background(AppColors.groupedBackground)
        .navigationTitle("Welcome")
    }
}
