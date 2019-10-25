//
//  VibrationView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/17/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct VibrationView: View {
    
    @State private var intensity: Double = 50
    
    var body: some View {
        VStack {
            Text("Vibration Intensity").font(.largeTitle)
            Slider(value: $intensity, in: 0...100, step: 0.1).padding()
            Text("Intensity: \(Int(intensity))%").font(.title)
        }.navigationBarTitle(Text("Vibration"), displayMode: .inline)
    }
}

struct VibrationView_Previews: PreviewProvider {
    static var previews: some View {
        VibrationView()
    }
}
