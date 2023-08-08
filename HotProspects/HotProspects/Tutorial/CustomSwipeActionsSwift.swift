//
//  CustomSwipeActionsSwift.swift
//  HotProspects
//
//  Created by Brandon Johns on 8/7/23.
//

import SwiftUI

struct CustomSwipeActionsSwift: View {
    var body: some View {
        List {
            Text("Brandon Johns")
                .swipeActions {
                    Button(role: .destructive) {
                        print("Deletint")
                    } label: {
                        Label ("Delete", systemImage: "minus.circle")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button {
                        print("pinning")
                    } label: {
                        Label("Pin", systemImage: "pin")
                    }
                    .tint(.orange)
                }
        }
    }
}

struct CustomSwipeActionsSwift_Previews: PreviewProvider {
    static var previews: some View {
        CustomSwipeActionsSwift()
    }
}
