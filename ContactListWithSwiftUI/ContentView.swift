//
//  ContentView.swift
//  ContactListWithSwiftUI
//
//  Created by Dmitry Logachev on 11.11.2021.
//

import SwiftUI

struct ContentView: View {
    let contactList = Person.getPersonsList()
    
    var body: some View {
        ZStack {
            ContactsScreen(contactList: contactList)
            TabView {
                ContactsScreen(contactList: contactList)
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
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
