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
                        .padding(5)
                }
                VStack(alignment: .leading){
                    Text("Hello User")
                        .font(.title)
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
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.131, green: 0.469, blue: 0.17))
                

                
                VStack{
                    Text("Choose one of the options below to continue tracking your health")
                        .fontWeight(.light)
                        .foregroundColor(Color(red: 0.177, green: 0.481, blue: 0.164))
                        .multilineTextAlignment(.center)
                        .frame(width: 300.0)
                        .offset(y: 350)
                        
                }
            

            }
            
            Spacer()
                .frame(height: 400)
//
            
            
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
           
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
