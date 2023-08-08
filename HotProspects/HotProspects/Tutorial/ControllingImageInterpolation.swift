//
//  ControllingImageInterpolation.swift
//  HotProspects
//
//  Created by Brandon Johns on 8/6/23.
//

import SwiftUI

struct ControllingImageInterpolation: View {
    var body: some View {
        Image("example")
            .interpolation(.none) 
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
    }
}

struct ControllingImageInterpolation_Previews: PreviewProvider {
    static var previews: some View {
        ControllingImageInterpolation()
    }
}
