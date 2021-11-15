//
//  DetailedInfoScreen.swift
//  ContactListWithSwiftUI
//
//  Created by Dmitry Logachev on 13.11.2021.
//

import SwiftUI

struct DetailedInfoScreen: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
            }
            ContactRow(contact: contact.phoneNumber, image: "phone")
            ContactRow(contact: contact.email, image: "tray")
            // or Label can be used instead
            // Label(contact.phoneNumber, systemImage: "phone")
            // Label(contact.email, systemImage: "tray")
        }
        .navigationTitle(contact.fullName)
    }
}

struct DetailedInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailedInfoScreen(contact: Person.getPersonsList().first!)
    }
}
