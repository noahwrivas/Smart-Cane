//
//  UserInfoView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/17/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

// 4 buttons

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Name: Atlas")
                .font(.title)
            Text("Address: 555 SUNY Poly").font(.title)
            Text("Phone Number: (315) 555 - 5555").font(.title)
            Text("Emergency Contact: Dr. Bush").font(.title)
            }.navigationBarTitle(Text("User Info"), displayMode: .inline).padding()
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
