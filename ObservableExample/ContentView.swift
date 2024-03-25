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
            BookEditView(bookTitle: $book.title)
        }
        .padding()
    }
}

struct BookEditView: View {
    // You may ask why not using @Bindable, the reason is:
    // Binding is for primitive types
    // Bindable is for object types which conforms to Observable protocol
    // the code produce error:
    // 'init(wrappedValue:)' is unavailable: The wrapped value must be an object that conforms to Observable
    @Bindable var bookTitle: String
    var body: some View {
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
