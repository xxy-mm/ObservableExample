//
//  ContentView.swift
//  ObservableExample
//
//  Created by Darian Mitchell  on 2024/3/25.
//



import SwiftUI

struct ContentView: View {
    // add @State
     @State private var book = Book()
    
    var body: some View {
        VStack {
            Text(book.title)
            // book.title -> $book.title
            TextField("title", text: $book.title)
        }
        .padding()
    }
}


// add @Observable
@Observable
class Book {
    var title = "swift programming"
}
#Preview {
    ContentView()
}
