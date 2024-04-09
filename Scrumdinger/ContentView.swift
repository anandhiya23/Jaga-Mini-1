//
//  ContentView.swift
//  JAGA Details Page
//
//  Created by Arshad Buchori on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    let entry: String = "Blah"
    let slot: String = "Blah"
    let idNumber: String = "Blah"
    let license: String = "Blah"
    let name: String = "Blah"
    
    var body: some View {
        ZStack {
            // Background color
            Color(red: 248/255, green: 244/255, blue: 242/255).edgesIgnoringSafeArea(.all)
            
                ScrollView {
                    VStack {
                        VStack{
                            Image("IdImage")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 247.0, height: 156.0)
                                .clipped()
                                .padding(.top, 15)
                                
                            Image("PlateImage")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 247.0, height: 156.0)
                                .clipped()
                                .padding(.bottom, 16)
                        }
                        Spacer()
                        
                        //Content License and ID
                        VStack(){
//                            HStack(){
//                                Text("Entry")
//                                    .frame(maxWidth: 100, alignment:.leading)
//                                Text("27/03/24, 09.41")
//                                Spacer()
//                            }
//
//                            .padding(.vertical, 11.0)
//                            //                .background(Color.gray)
//                            Divider()
                            
                            ContentData(CD1 : "Entry", CD2: "27/03/24, 09.41")
                            ContentData(CD1:"Slot",CD2:"011")
                            ContentData(CD1:"License",CD2:"BM 5888 XG")
                            ContentData(CD1:"ID Number",CD2:"1746271811034562")
                            ContentData(CD1:"Name",CD2:"FELIX LAURENT")
                            ContentData(CD1:"Address",CD2:"JL Lingkar Barat, Panungga")
                        }
                        .padding(.horizontal, 16.0)
                        .padding(.top,8.0)
                        .background(Color.white)
                        .frame(width: .infinity, height: .infinity, alignment: .center)
                        .cornerRadius(10)
                        //                    .shadow(color: .black.opacity(0.1), radius: 5)
                        Spacer()
                        
                        //Content Note
                        VStack(){
                            HStack(){
                                TextField("Add Additional Information...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).padding(.top,-44)
                                Text("").padding(.bottom, 60)
                                Spacer()
                            }
                            
                            .padding(.vertical, 11.0)
                            //                .background(Color.gray)
                            Divider()
                        }
                        .padding(.horizontal, 16.0)
                        .padding(.top,8.0)
                        .background(Color.white)
                        .frame(width: .infinity, height: .infinity, alignment: .center)
                        .cornerRadius(10)
                        //                    .shadow(color: .black.opacity(0.1), radius: 5)
                        Spacer()
                        
                    }
                    .padding(.horizontal,16)
                    .padding(.bottom, 100)
                }
            
            
            
                VStack (alignment:.leading){
                    /*Group {
                        HStack {
                            Button(action:{}) {
                                Image(systemName: "chevron.left")
                                    .font(.system(size: 20, weight: .semibold))
                                    .foregroundColor(Color(red: 239/255, green: 118/255, blue: 7/255))
                                Text("Back")
                                    .padding(.leading, -5.0)
                                .foregroundColor(Color(red: 239/255, green: 118/255, blue: 7/255))
                            }
                            
                            Spacer()
                            Text("Edit Active Visitor Data")
                                .foregroundColor(.black)
                                .font(.system(size: 17, weight: .semibold))
                                .padding(.leading, -24.0)
                            Spacer()
                            Button(action: {
                                        // Action for the button
                                    }) {
                                        Image(systemName: "trash")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 24, height: 22)
                                            .foregroundColor(Color(red: 239/255, green: 118/255, blue: 7/255))
                                    }
                        }
                        
                        .padding(.top,8)
                        .padding(.bottom, 24)
                        .padding(.horizontal,16)
                        
                        Divider().padding(.top,-8)
                    }
                    .background(Color(red: 248/255, green: 244/255, blue: 242/255))
                    */
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button(action:{}) {
                            Spacer()
                            Text("Save Changes")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.white)
                                .frame(width: 351, height: 53, alignment: .center)
                                .background(Color(red: 239/255, green: 118/255, blue: 7/255))
                                .cornerRadius(50)
                            Spacer()
                        }
                        .frame(width: .infinity, height: 55, alignment: .leading)
                        .padding(.top,20)
                        Spacer()
                    }
                    .background(Color(red: 248/255, green: 244/255, blue: 242/255))
                    .frame(width: .infinity, height: .infinity, alignment: .center)
                    
                }
            }
        .navigationTitle("Active")
            
        }
    }



#Preview {
    ContentView()
}
