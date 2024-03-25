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
            BookEditView(book: book)
        }
        .padding()
    }
}

struct BookEditView: View {
    // add @Bindable to book property to create binding
    @Bindable var book: Book
    var body: some View {
        // $book is the binding just created by @Bindable
        // no longer produce errors
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
