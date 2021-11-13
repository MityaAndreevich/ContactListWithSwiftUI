//
//  NumbersScreen.swift
//  ContactListWithSwiftUI
//
//  Created by Dmitry Logachev on 13.11.2021.
//

import SwiftUI

struct NumbersScreen: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text("\(contact.fullName)")) {
                        ContactRow(contact: contact.phoneNumber, image: "phone")
                        ContactRow(contact: contact.email, image: "tray")
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
    
    struct NumbersScreen_Previews: PreviewProvider {
        static var previews: some View {
            NumbersScreen(contacts: Person.getPersonsList())
        }
    }
}
