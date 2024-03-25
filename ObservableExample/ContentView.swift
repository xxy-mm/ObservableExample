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
            // 3.
            // now the BookEditView's bookTitle property is a Binding
            // we have to pass a Binding as the parameter: $book.title instead of book.title
            BookEditView(bookTitle: $book.title)
        }
        .padding()
    }
}

struct BookEditView: View {
    // 2. 
    // add @Binding to bookTitle to create a binding of the property
    @Binding var bookTitle: String
    var body: some View {
        // 1. 
        // change bookTitle to $bookTitle since the text arg must be a Binding
        TextField("title", text: $bookTitle)
    }
}

@Observable
class Book {
    var title = "swift programming"
}
#Preview {
    ContentView()
}
