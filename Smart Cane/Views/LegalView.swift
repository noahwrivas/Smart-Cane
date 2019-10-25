//
//  LegalView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/17/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

/*
 
 Resolved Issues
 Using the UUID attribute type, the URI attribute type, or the persistent history feature properly generates an error when used with a data model file format prior to the format used in Xcode 9. (50188371)
 
 */

import SwiftUI

struct LegalView: View {
    
//    @State var initialOpening = AppData[0].InitialOpening
    
    var body: some View {

        List{
            VStack {
            Text("The Creators of the Smart Cane are not responsible for any incidents that may occur. The Smart cane is intented only to add to the functionallity of the orginal cane. There is no intention to replace the use of the orginal cane. The user must understand that the Smart cane is simply a cane with add abilities. Any misuse of the cane is the responsibility of the user and they will be help accountable. Under no circumstances should the user attempt to open the Smaer Cane, doing so may cause the Smart Cane to break and again is the responsibility of the user should any incidents occur. Hazards do exist should the Smart Cane unintentionally break, These hazards include but are not limited to: loose live electrical wireing, faulty sensors, faulty camera vision, incorrect location reading, battery failure, and improper distance measurments. Should an event occur when one of the functionallities of the cane fail with or without the Smart Cane being tampered with by the user, it will remain the users responsibility should an incident occur. This is because the Smart cane does not replace the orginal cane and should be used with equal caution as the normal cane.")
            .lineLimit(nil)
            Spacer()
            Text("Sources:")
            Text("https://github.com/feathericons/feather/issues/280")
            Text("https://thenounproject.com/term/silent-mode/793451/")
            
//                Text("Marker").onAppear{
//                    self.initialOpening = false
//                }
            }.navigationBarTitle(Text("Terms and Conditions"), displayMode: .inline).padding()
        }
    }
}

struct LegalView_Previews: PreviewProvider {
    static var previews: some View {
        LegalView()
    }
}
