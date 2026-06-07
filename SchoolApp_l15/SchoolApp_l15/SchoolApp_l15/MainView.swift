import SwiftUI

struct MainView: View {

    @State private var person = Person()

    var body: some View {
        VStack(spacing: 16) {
            
            
            Text("Name card")
                .font(.title2)
                .fontWeight(.bold)

         
            TextField("Edit your name", text: $person.name)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Text(person.name)
                .font(.title3)

            Text(person.city)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MainView()
}
