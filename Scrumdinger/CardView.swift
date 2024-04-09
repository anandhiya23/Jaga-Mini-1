//
//  CardView.swift
//  Scrumdinger
//
//  Created by Bintang Anandhiya on 28/03/24.
//

import SwiftUI

struct CardView: View {
    let record: Record
    var body: some View {
        HStack{
            VStack(alignment: .center){
                Spacer()
                Text(String(format:"%03d",record.slotNumber))
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                    .foregroundStyle(Color(hue: 0.08, saturation: 0.971, brightness: 0.937))
                Spacer()
            }.frame(width: 80)
            .padding(.horizontal)
            .background(Color(red: 1.0, green: 0.8901960784313725, blue: 0.788235294117647))
            .overlay(Rectangle().frame(width: 1, height: nil, alignment: .trailing).foregroundColor(Color(red: 1.0, green: 0.792156862745098, blue: 0.6)), alignment: .trailing)
            
            VStack(alignment: .leading,spacing: 10) {
                Text("**\(Image(systemName: "person"))**  \(record.name)")
                Text("**\(Image(systemName: "number.square"))**  \(record.plateNumber)")
                Text("**\(Image(systemName: "clock"))**  \(record.timeWentIn)")
            }.font(.system(size: 14))
            .padding(.leading)
            
            Spacer()
            
            HStack{
                Image(systemName: "chevron.right")
                    .padding(.trailing, 20)
                    .foregroundColor(.gray)
                
            }
        }
        .background(Color.init(UIColor.white))
        /*.background(
            NavigationLink("", destination: Text("SLOT: \(record.slotNumber) \nNAME: \(record.name)"))
                        .opacity(0)
                )*/
        .background(
            NavigationLink("", destination: ContentView())
        )
    }
}


struct CardView_Previews: PreviewProvider {
    static var sampleRecord = Record.sampleData[1]
    static var previews: some View {
        CardView(record: sampleRecord)
            .previewLayout(.fixed(width: 400, height: 130))
            .frame(height:130)
        CardView(record: Record.sampleData[2])
            .previewLayout(.fixed(width: 400, height: 130))
    }
}
