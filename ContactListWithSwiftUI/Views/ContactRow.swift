//
//  ContactRow.swift
//  ContactListWithSwiftUI
//
//  Created by Dmitry Logachev on 13.11.2021.
//

import SwiftUI

struct ContactRow: View {
    let contact: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: "Robocop", image: "figure.wave")
    }
}
