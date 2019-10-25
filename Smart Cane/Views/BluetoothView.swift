//
//  BluetoothView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/17/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct BluetoothView: View {
    
//    var intensity:Int
    
    var body: some View {
        VStack {
            Button(action:{
                MyBluetoothManager.shared.scan()
            }){
                    Text("Scan for Bluetooth")
            }
            List(MyBluetoothManager.shared.central.retrievePeripherals(withIdentifiers: nil)){
                Text("Hello")
                Text("Hello")
            }
        }
    }
}

struct BluetoothView_Previews: PreviewProvider {
    static var previews: some View {
        BluetoothView()
    }
}
