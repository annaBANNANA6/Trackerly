//
//  ContentView.swift
//  Trackerly
//
//  Created by Choon-Weng Chan on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .center) {
                NavigationLink(destination: ContentView()){
                    Text("TRACKERLY")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color(hue: 0.324, saturation: 0.713, brightness: 0.45))
                        .multilineTextAlignment(.center)
                }
                VStack(alignment: .leading){
                    Text("Hello User")
                    Text("How are you feeling today?")
                }

            }
            Spacer()
                .frame(height: 600)
            .toolbar{
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: ContentView()){
                        Image("welcome")
                    }
                    NavigationLink(destination: home()){
                        Image("home")
                    }
                    NavigationLink(destination: calendar()){
                        Image("calendar")
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
