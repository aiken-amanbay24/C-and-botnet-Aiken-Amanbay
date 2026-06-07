// Views/StudentsPage.swift
import SwiftUI

struct StudentsPage: View {
    @State private var viewModel = StudentsViewModel()

    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: Spacing.sm) {
                HStack {
                    TextField("Student Name", text: $viewModel.newName)
                        .textFieldStyle(.roundedBorder)
                    TextField("GPA (e.g. 3.7)", text: $viewModel.newGpa)
                        .textFieldStyle(.roundedBorder)
                        #if os(iOS)
                        .keyboardType(.decimalPad)
                        #endif
                }

                Button(action: {
                    viewModel.addStudent()
                }) {
                    Label("Add Student", systemImage: "plus")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("Success"))
                .controlSize(.large)
            }
            .padding(Spacing.md)
            .background(AppColors.secondaryGroupedBackground)

            List(viewModel.students) { student in
                NavigationLink(destination: StudentDetailPage(studentName: student.name, gpa: student.gpa)) {
                    StudentRow(name: student.name, gpa: student.gpa)
                }
            }
            #if os(iOS)
            .listStyle(.insetGrouped)
            .scrollContentBackground(.hidden)
            #else
            .listStyle(.inset)
            #endif
        }
        .background(AppColors.groupedBackground)
        .navigationTitle("Students")
    }
}
