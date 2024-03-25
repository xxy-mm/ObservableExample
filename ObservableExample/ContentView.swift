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
            // only pass book.title property
            BookEditView(bookTitle: book.title)
        }
        .padding()
    }
}

// since the component only changes the book's title
// we wanna pass only the title property to it
struct BookEditView: View {
    var bookTitle: String
    var body: some View {
        // produce error:
        // Cannot convert value of type 'String' to expected argument type 'Binding<String>'
        TextField("title", text: bookTitle)
    }
}

@Observable
class Book {
    var title = "swift programming"
}
#Preview {
    ContentView()
}
