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
                Spacer()
                    .frame(height: 200)
                NavigationLink(destination: calendar()){
                    Image("calendar logo")
                }
                Spacer()
                    .frame(height: 50)
                    Link(destination: URL(string: "https://www.mayoclinic.org/symptom-checker/select-symptom/itt-20009075")!, label: {
                        Text("Symptom Checker")
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .frame(width: 280, height: 50)
                            .border(Color.black, width: 2)
                    })
                    Spacer()
                        .frame(height: 20)
                    Link(destination: URL(string: "https://www.samhsa.gov/find-help")!, label: {
                        Text("Mental Health Help")
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .frame(width: 280, height: 50)
                            .border(Color.black, width: 2)
                    })
                    Spacer()
                        .frame(height: 20)
                    Link(destination: URL(string: "https://www.buoyhealth.com/symptom-checker/")!, label: {
                        Text("Healthcare Chatbot")
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .frame(width: 280, height: 50)
                            .border(Color.black, width: 2)
                    })
                    
                }
                Spacer()
                    .frame(height: 400)
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
                            NavigationLink(destination: calendar())
                            {
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
    
    struct home_Previews: PreviewProvider {
        static var previews: some View {
            home()
        }
    }
