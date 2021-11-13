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
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                }
                HStack {
                    Image(systemName: "phone")
                    Text("\(contact.phoneNumber)")
                }
                HStack {
                    Image(systemName: "tray")
                    Text("\(contact.email)")
                }
            }
            .navigationTitle("\(contact.fullName)")
    }
}

struct DetailedInfoScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailedInfoScreen(contact: Person.getPersonsList().first!)
    }
}