//
//  CustomValuesEnvironmentObject.swift
//  HotProspects
//
//  Created by Brandon Johns on 8/6/23.
//

// @EnvironmentObject any child view can access to and recieve updates from it
// uses observableobject

import SwiftUI

@MainActor class UserObject: ObservableObject {
    @Published var name = "Brandon Johns"
}

struct EditView: View {
    @EnvironmentObject var user: UserObject
    var body: some View {
        TextField("Name", text: $user.name)
    }
}

struct DisplayView: View {
    @EnvironmentObject var user: UserObject

    var body: some View {
        Text(user.name )
    }
}

struct CustomValuesEnvironmentObject: View {
    
    @StateObject  var user = UserObject()
    
    
    var body: some View {
        VStack {
            EditView()
            DisplayView()
        }.environmentObject(user)
    }
}

struct CustomValuesEnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        CustomValuesEnvironmentObject()
    }
}
