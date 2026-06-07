// ViewModels/StudentsViewModel.swift
import Foundation
import Observation

@Observable
class StudentsViewModel {
    var students: [Student] = [
        Student(name: "Aiken", gpa: 4.0),
        Student(name: "Assel", gpa: 3.8),
        Student(name: "Arujan", gpa: 3.9),
        Student(name: "Assylai", gpa: 3.5),
        Student(name: "Moldir", gpa: 3.7)
    ]

    var newName: String = ""
    var newGpa: String = ""

    func addStudent() {
        guard !newName.trimmingCharacters(in: .whitespaces).isEmpty,
              let gpaValue = Double(newGpa) else { return }

        let newStudent = Student(name: newName, gpa: gpaValue)
        students.append(newStudent)

        newName = ""
        newGpa = ""
    }
}
