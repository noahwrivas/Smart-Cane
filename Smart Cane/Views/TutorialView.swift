//
//  TutorialView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/16/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        
        // read and write the data to anf from a JSON file
        
        List {
            Text("To change any of the button functions, click on them").font(.largeTitle)
            Text("To turn on and off silent mode, use the Top Left button")
                .font(.title)
            Text("To turn the Smart Cane on and off, use the Top Right button")
            .font(.title)
            Text("To turn on and off ___, use the ___ button")
            .font(.title)
            Text("To turn on and off ___, use the ___ button")
            .font(.title)
            Text("To turn on and off ___, use the ___ button")
            .font(.title)
            }.navigationBarTitle(Text("Help"), displayMode: .inline).padding()
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
