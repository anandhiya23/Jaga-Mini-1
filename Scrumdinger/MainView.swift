//
//  MainView.swift
//  Scrumdinger
//
//  Created by Bintang Anandhiya on 01/04/24.
//

import SwiftUI

struct MainView: View {
    var scrums = DailyScrum.sampleData
    @State private var searchText = ""
    @State private var sortBy = 1
    
    var results: [DailyScrum] {
        let temp = searchText.isEmpty ? scrums : scrums.filter({ scrum in
            scrum.name.contains(searchText)
        })
        switch(sortBy){
            case 1:
            return temp.sorted { test1, test2 in
                test1.slotNumber < test2.slotNumber
            }
            
            default:
            return temp.sorted { test1, test2 in
                test1.name < test2.name
            }
        }
        
    }
    
    var body: some View {
        NavigationStack {
            
            VStack(spacing: 1){
                List{
                        
                        HStack {
                            Picker(selection: $sortBy, label: Text("Sort By")) {
                                Text("KTP Slot").tag(1)
                                Text("Name").tag(2)
                            }
                            .pickerStyle(.menu)
                            .labelsHidden()
                            .frame(width: 100,height: 10)
                            .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 10))
                            .background(Color.white)
                            .cornerRadius(10)
                            
                        }
                        .listRowBackground(Rectangle().fill(.clear))
                        .padding(EdgeInsets(.zero))
                        .listRowInsets(EdgeInsets.init(.zero))
                        
                        
                        
                        
                        ForEach(results, id: \.self){   scrum in
                            CardView(scrum: scrum)
                                .listRowInsets(EdgeInsets.init(.zero))
                                
                                .swipeActions {
                                    Button("Test") {
                                        print("delete")
                                    }
                                    .tint(.red)
                                    
                                    Button("Order") {
                                        print(scrum.name)
                                    }
                                    .tint(.orange)

                                }
                            
                            
                        }
                        
                        .frame(height: 120)
                        .listRowSeparator(.hidden)
                        
                        
                    }
                    .scrollContentBackground(.hidden)
                    .listRowSpacing(12)
                
                
                
                HStack{
                    Button(action: {}){
                        Label("Scan Id", systemImage: "scanner")
                            .ignoresSafeArea()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding(.vertical,20)
                            .foregroundColor(.white)
                            .background(.orange,
                               in: Capsule())
                            .font(.system(size: 20,weight: .bold))
                            
                    }
                    //.background(.red)
                    .padding(.horizontal)
                    .padding(.bottom,-15)
                }
                .frame(height: 60, alignment: .bottom)
                .background(Color.init(Theme.orangeGray.rawValue))
                .overlay(Rectangle().frame(width: nil, height: 1.5, alignment: .top).foregroundColor(Color.white), alignment: .top)
                
                
            }
            .background(Color.init(Theme.orangeGray.rawValue))
            .searchable(text: $searchText)
            .navigationTitle("Today")
            
            
        }
        
        
    }
}

struct RoomInfo: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let image: Image
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
}

struct RoomDetail: View {
    
    let roomInfo: RoomInfo
  
    var body: some View {
        VStack {
            roomInfo.image
                .font(.system(size: 56))
                .foregroundColor(.accentColor)
            Text(roomInfo.name)
                .font(.system(size: 24))
        }
        .padding()
    }
}

struct DevTechieNavigationLinkExample: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, DevTechie")
                    .font(.largeTitle)
                
                NavigationLink(destination: Text("You reached here via NaviagtionLink")) {
                    HStack {
                        Image(systemName: "computermouse")
                        Text("Click Me!")
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    MainView()
    //DevTechieNavigationLinkExample()
        
}
