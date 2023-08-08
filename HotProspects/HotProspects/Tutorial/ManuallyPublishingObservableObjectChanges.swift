//
//  ManuallyPublishingObservableObjectChanges.swift
//  HotProspects
//
//  Created by Brandon Johns on 8/6/23.
//

import SwiftUI

@MainActor class DelayedUpdater: ObservableObject {
    var value = 0 {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        for i in 1...10 {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) ){
                self.value += 1
            }
        }
    }
}


struct ManuallyPublishingObservableObjectChanges: View {
    
    @StateObject private var updater = DelayedUpdater()
    
    var body: some View {
        Text("Value is \(updater.value)")
    }
}

struct ManuallyPublishingObservableObjectChanges_Previews: PreviewProvider {
    static var previews: some View {
        ManuallyPublishingObservableObjectChanges()
    }
}
