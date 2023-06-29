//
//  calendar.swift
//  Trackerly
//
//  Created by Choon-Weng Chan on 6/27/23.
//

import SwiftUI

struct calendar: View {
    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .toolbar{
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: ContentView()){
                        Image("welcome 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                        
                        
                        
                    }
                    NavigationLink(destination: home()){
                        Image("home 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                        
                    }
                    NavigationLink(destination: calendar()){
                        Image("calendar 3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 85.0)
                        
                    }
                }
            }
        }
    }
    
}

struct calendar_Previews: PreviewProvider {
    static var previews: some View {
        calendar()
    }
}
