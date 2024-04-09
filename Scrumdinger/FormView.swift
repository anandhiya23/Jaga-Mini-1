//
//  FormView.swift
//  JagaMini
//
//  Created by Bintang Anandhiya on 03/04/24.
//

import SwiftUI

struct FormView: View {
    @State private var photo1 = ""
    @State private var photo2 = ""
  @State private var entry = ""
  @State private var exit = ""
  @State private var license = ""
  @State private var idNumber = ""
  @State private var name = ""
  @State private var additional = ""
  
  @State private var preferredContactMethod = ContactMethod.email
  
  enum ContactMethod {
    case email, phone
  }
  
  var body: some View {
    NavigationView {
        
        VStack {
            
            
            Form {
                Image("IdImage")
                    .resizable()
                .scaledToFit()
                .listRowSeparator(.hidden)
                Image("PlateImage")
                    .resizable()
                .scaledToFit()
              Section(header: Text("How can we reach you?")) {
                
                  LabeledContent{
                      TextField("Time", text: $entry)
                        .disableAutocorrection(true)
                  } label: {
                      Text("Entry")
                  }
                  
                  LabeledContent{
                      TextField("Exit", text: $exit )
                        .disableAutocorrection(true)
                  } label: {
                      Text("Exit")
                  }
                  
                  LabeledContent{
                      TextField("License", text: $license )
                        .disableAutocorrection(true)
                  } label: {
                      Text("License")
                  }
                  
                  LabeledContent{
                      TextField("ID Number", text: $idNumber )
                        .disableAutocorrection(true)
                  } label: {
                      Text("ID Number")
                  }
                  
                  LabeledContent{
                      TextField("Name", text: $name )
                        .disableAutocorrection(true)
                  } label: {
                      Text("Name")
                  }
                  
              }
              
              Section(header: Text("Briefly explain what‘s going on.")) {
                TextEditor(text: $additional)
              }
              
              Button("Submit", action: {
                print("Submit button tapped")
              })
            }
            .navigationTitle("Data Input")
        }
      
    }
  }
}
#Preview {
    FormView()
}
