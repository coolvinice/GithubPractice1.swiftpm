import SwiftUI

struct ContentView: View {
    @State var tasks: [String] = ["Mow the Lawn", "Feed the  Dog", "Grocery Shop"]
    var body: some View {
        VStack {
            List {
                ForEach(tasks, id: \.self) { task in
                    Text(task)
                }
            }
        }
    }
}
