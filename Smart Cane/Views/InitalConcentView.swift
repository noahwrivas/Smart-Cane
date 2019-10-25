//
//  InitalConcentView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/17/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct InitalConcentView: View {
    
    @State private var Consent = false
    @State private var Submit = false
    
    var body: some View {
        NavigationView {
            VStack {
                if Submit == false{
                    LegalView()
                   
                    Toggle(isOn: $Consent){
                        Text("Do you agree to these terms and conditions? ")
                    }.padding()
                   if Consent {
                    Button(action:{self.Submit.toggle()}){
                            Text("Submit")
                    }.padding(.bottom, 20)
                    }
                }
                if Submit {
                    HomeView()
                }
            }
        }
    }
}

struct InitalConcentView_Previews: PreviewProvider {
    static var previews: some View {
        InitalConcentView()
    }
}
