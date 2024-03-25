//
//  ContentView.swift
//  ObservableExample
//
//  Created by Darian Mitchell  on 2024/3/25.
//



import SwiftUI

struct ContentView: View {
     @State private var book = Book()
    
    var body: some View {
        VStack {
            Text(book.title)
            // move TextField into BookEditView and pass the book in
            BookEditView(book: book)
        }
        .padding()
    }
}

// create custom view to edit the book title
struct BookEditView: View {
    let book: Book
    var body: some View {
        // produce error: Cannot find '$book' in scope
        TextField("title", text: $book.title)
    }
}


@Observable
class Book {
    var title = "swift programming"
}
#Preview {
    ContentView()
}
