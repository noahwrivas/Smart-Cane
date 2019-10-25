//
//  Data.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/23/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI
import CoreLocation

struct JSONData: Hashable, Codable {
    var id: Int
    fileprivate var coordinates: Coordinates
    var InitialOpening: Bool
    var SilentMode: Bool
    var Ping: Bool
    var VibrationIntensity: Int
    var bluetoothData: BluetoothData

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

struct BluetoothData: Hashable, Codable {
    var UUID: String
    var Data: String
}
