//
//  ContentView.swift
//  ContactListWithSwiftUI
//
//  Created by Dmitry Logachev on 11.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                ContactsScreen()
                TabView {
                    ContactsScreen()
                        .tabItem {
                            Image(systemName: "person.3.fill")
                            Text("Contacts")
                        }
                    NumbersScreen()
                        .tabItem {
                            Image(systemName: "phone.fill")
                            Text("Numbers")
                        }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
