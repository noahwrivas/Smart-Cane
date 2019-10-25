//
//  ErrorView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/19/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image(systemName: "exclamationmark.circle").resizable().frame(width: 75, height: 75)
                Text("Error").font(.largeTitle)
            }.padding()
            Text("There was an error that occured due to ______. Consider replacing or repairing _______.").font(.title).lineLimit(nil).multilineTextAlignment(.center)
            Spacer()
        }.padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
