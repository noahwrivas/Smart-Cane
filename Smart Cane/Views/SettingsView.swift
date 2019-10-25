//
//  SettingsView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/15/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
            List(){
                NavigationLink(destination: BluetoothView()){
                    Image(systemName: "antenna.radiowaves.left.and.right").resizable().frame(width: 75, height: 75)
                    Text("Bluetooth").font(.largeTitle).padding()
                }
                NavigationLink(destination: VibrationView()){
                    Image(systemName: "waveform.circle").resizable().frame(width: 75, height: 75).clipShape(Circle())
                    Text("Vibration").font(.largeTitle).padding()
                }
            }
        .navigationBarTitle(Text("Settings"), displayMode: .inline)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
