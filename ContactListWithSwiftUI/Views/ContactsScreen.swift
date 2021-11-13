//
//  ContactsScreen.swift
//  ContactListWithSwiftUI
//
//  Created by Dmitry Logachev on 13.11.2021.
//

import SwiftUI

struct ContactsScreen: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                NavigationLink(destination: DetailedInfoScreen(contact: contact)) {
                    Text("\(contact.fullName)")
                }
                .padding()
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen(contactList: Person.getPersonsList())
    }
}
