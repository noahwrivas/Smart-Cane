//
//  LocationView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/18/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct LocationView: View {
    
    
    
    var body: some View {
        VStack {
            MapView().edgesIgnoringSafeArea(.top)
            VStack(alignment: .leading) {
                Text("Destination: SUNY Poly").font(.title)
                Text("Current Location: SUNY Poly").font(.title)
                Text("Next Turn: Right in 10 feet").font(.title)
                Text("Time Until Arrival: 5 minutes").font(.title)
            }.padding(.top, 20).padding(.bottom, 20)
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
