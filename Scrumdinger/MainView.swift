//
//  MainView.swift
//  Scrumdinger
//
//  Created by Bintang Anandhiya on 01/04/24.
//

import SwiftUI

struct MainView: View {
    var sampleRecord = Record.sampleData
    @StateObject private var vm = AppViewModel()
    @State private var searchText = ""
    @State private var sortBy = 1
    @State private var goesToScan = false
    
    var results: [Record] {
        let temp = searchText.isEmpty ? sampleRecord : sampleRecord.filter({ scrum in
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
                            .pickerStyle(.automatic)
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
                            CardView(record: scrum)
                                .listRowInsets(EdgeInsets.init(.zero))
                                .swipeActions {
                                    Button{
                                        print("delete")
                                    } label: {
                                        Image(systemName: "trash.fill")

                                    }
                                    .tint(.red)
                                    
                                    Button() {
                                        print(scrum.name)
                                    }label: {
                                        Image(systemName: "clock.badge.checkmark")

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
                    
                        Button(action: {goesToScan = true}){
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
            .navigationTitle("Today")
            .background(Color.init(Theme.orangeGray.rawValue))
            .navigationDestination(isPresented: $goesToScan){
                ContentScannerView()
                    .environmentObject(vm)
                    .task {
                        await vm.requestDataScannerAccessStatus()
                    }
            }
            .searchable(text: $searchText)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                        Text("THURSDAY, 20 MAR")
                        .font(.subheadline)
                        .foregroundStyle(Color.init(UIColor.darkGray))
                        
                    }
                ToolbarItem(placement: .navigationBarTrailing) {
                                    HStack {
                                        Image(systemName: "clock")
                                        }
                                }
            }
        }
    }
}

#Preview {
    MainView()
    //DevTechieNavigationLinkExample()
        
}
