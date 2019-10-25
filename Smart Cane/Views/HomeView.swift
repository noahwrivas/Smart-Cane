//
//  HomeView.swift
//  Smart Cane
//
//  Created by Noah Rivas on 10/16/19.
//  Copyright © 2019 Noah Rivas. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @State private var SilentModeState = true
    @State var battery = 28
    
    var body: some View {
        
            HStack(alignment: .center){
                List() {
                    
                    HStack {
                        if SilentModeState {
                            Image(systemName: "speaker.zzz.fill").resizable().frame(width: 75, height: 60)
                        }
                        else{
                            Image(systemName: "speaker.3.fill").resizable().frame(width: 75, height: 60)
                        }
                        VStack(alignment: .leading) {
                            
                            Button(action:{ self.SilentModeState.toggle()}){
                            
                                if SilentModeState {
                                    Text("Silent Mode ON").padding().font(.largeTitle)
                                }
                                else{
                                    Text("Silent Mode OFF").padding().font(.largeTitle)
                                }
                                }
                        }
                    }
                    
                    HStack {
                        if battery > 50 {
                            Image(systemName: "battery.100").scaleEffect(2.5).padding().padding(.trailing, 15)
                        }
                        else if battery > 25 {
                            Image(systemName: "battery.25").scaleEffect(2.5).padding().padding(.trailing, 15)
                        }
                        else {
                            Image(systemName: "battery.0").scaleEffect(2.5).padding().padding(.trailing, 15)

                        }
                        Text("Battery Life: \(battery)%").font(.largeTitle).padding()
                    }
                    
                    HStack {
                            Image(systemName: "timelapse").resizable().frame(width: 75, height: 75)
                            
                            Button(action:{  }){
                                Text("Find My Cane").font(.largeTitle).padding()
                            
                        }
                    }
                    
                    NavigationLink(destination: LocationView()){               Image(systemName: "location.circle").resizable().frame(width: 75, height: 75).padding(.trailing, 3)
                        Text("Navigation").font(.largeTitle).padding()
                    }
                    
                    NavigationLink(destination: LoadingView()){               HStack {
                        Image(systemName: "doc.text.viewfinder").resizable().frame(width: 75, height: 75)
                        Text("Text Reading").font(.largeTitle).padding()
                        }
                    }
                    
                    NavigationLink(destination: SettingsView()){               Image(systemName: "gear").resizable().frame(width: 75, height:       75).clipShape(Circle())
                        Text("Settings").font(.largeTitle).padding()
                    }
                    NavigationLink(destination: UserInfoView()){
                        Image(systemName: "person.crop.circle").resizable().frame(width: 75, height: 75).clipShape(Circle())
                        Text("User Info").font(.largeTitle).padding()
                    }
                    NavigationLink(destination: TutorialView()){
                        Image(systemName: "questionmark.circle").resizable().frame(width: 75, height: 75).clipShape(Circle())
                        Text("Help").font(.largeTitle).padding()
                    }
                    NavigationLink(destination: LegalView()){
                        Image(systemName: "book.circle").resizable().frame(width: 75, height: 75).clipShape(Circle())
                        Text("Legal").font(.largeTitle).padding()
                    }
                }.navigationBarTitle(Text("Home"), displayMode: .large)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
