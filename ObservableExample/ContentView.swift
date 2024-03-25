//
//  ContentView.swift
//  ObservableExample
//
//  Created by Darian Mitchell  on 2024/3/25.
//



import SwiftUI

struct ContentView: View {
     private var book = Book()
    
    var body: some View {
        VStack {
            Text(book.title)
            // want to change the title of the book
            // passing book.title produce errors:
            // Cannot convert value of type 'String' to expected argument type 'Binding<String>'
            // we need a binding!
            TextField("title", text: book.title)
        }
        .padding()
    }
}



class Book {
    var title = "swift programming"
}
#Preview {
    ContentView()
}
