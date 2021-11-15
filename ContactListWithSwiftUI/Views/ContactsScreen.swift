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
                NavigationLink(contact.fullName,
                               destination: DetailedInfoScreen(contact: contact))
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen(contactList: Person.getPersonsList())
    }
}
