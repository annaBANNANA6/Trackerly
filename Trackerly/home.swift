//
//  home.swift
//  Trackerly
//
//  Created by Choon-Weng Chan on 6/27/23.
//

import SwiftUI

struct home: View {
    var body: some View {
        NavigationStack{
            VStack{
                
            }
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

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
