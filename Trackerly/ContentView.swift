//
//  ContentView.swift
//  Trackerly
//
//  Created by Choon-Weng Chan on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var condition : String = ""
    var body: some View {
        NavigationStack{
            VStack() {
                NavigationLink(destination: ContentView()){
                    Text("TRACKERLY")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color(hue: 0.322, saturation: 0.658, brightness: 0.561))
                        .multilineTextAlignment(.center)
                }
                VStack(alignment: .leading){
                    Text("Hello User")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.353, saturation: 0.739, brightness: 0.468))
                    Text("How are you feeling today?")
                        .foregroundColor(Color(hue: 0.327, saturation: 0.718, brightness: 0.458))
                }
                .padding(.horizontal, 40)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(){
                    Button(action: {
                        condition = "That's great! Glad that you are feeling good!"
                    }) {
                        Image("happy")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                    }
                    Button(action: {
                        condition = "sfdfadfdsfdsf"
                    }) {
                        Image("ok")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                    }
                    Button(action: {
                        condition = "Aw"
                    }) {
                        Image("sad")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120.0, height: 120.0)
                    }
                }
                

                
                Text(condition)
                    .font(.caption)
                    
                
            }
            Spacer()
                .frame(height: 400)
            .toolbar{
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: ContentView()){
                        Image("welcome")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                            
                            
                            
                    }
                    NavigationLink(destination: home()){
                        Image("home")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                            
                    }
                    NavigationLink(destination: calendar()){
                        Image("calendar")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100.0, height: 100.0)
                            
                    }
                }
            }
            .padding(0)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
