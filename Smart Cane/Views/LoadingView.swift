//
//  LoadingView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/19/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "hourglass").resizable().frame(width: 75, height: 115)
            Text("Loading...")
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
