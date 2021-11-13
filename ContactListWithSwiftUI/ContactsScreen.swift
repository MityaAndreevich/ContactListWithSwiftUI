//
//  ContactsScreen.swift
//  ContactListWithSwiftUI
//
//  Created by Dmitry Logachev on 13.11.2021.
//

import SwiftUI

struct ContactsScreen: View {
    
    let contactList = Person.getPersonsList()
    
    var body: some View {
        Text("Text")
            .font(.title)
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen()
    }
}
