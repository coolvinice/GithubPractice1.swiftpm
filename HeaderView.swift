//
//  HeaderView.swift
//  GithubPractice1
//
//  Created by Calvin Rice on 9/19/23.
//

import SwiftUI

struct HeaderView: View {
    @Binding var tasks: [Task]
    @State var enteredString: String;
    var body: some View {
        HStack {
            TextField("New Task", text: $enteredString)
                .padding()
            Button {
                tasks.append(Task(nameOfTask: enteredString))
            } label: {
                Text("Add to List")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25))
            }
        }
    }
}
