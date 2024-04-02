//
//  CardView.swift
//  Scrumdinger
//
//  Created by Bintang Anandhiya on 28/03/24.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        HStack{
            VStack(alignment: .center){
                Spacer()
                Text(String(format:"%03d",scrum.slotNumber))
                    .font(.system(size: 36))
                    .fontWeight(.bold)
                    .foregroundStyle(Color(hue: 0.08, saturation: 0.971, brightness: 0.937))
                Spacer()
            }.frame(width: 80)
            .padding(.horizontal)
            .background(Color(red: 1.0, green: 0.8901960784313725, blue: 0.788235294117647))
            .overlay(Rectangle().frame(width: 1, height: nil, alignment: .trailing).foregroundColor(Color(red: 1.0, green: 0.792156862745098, blue: 0.6)), alignment: .trailing)
            
            VStack(alignment: .leading,spacing: 10) {
                Text("**\(Image(systemName: "person"))**  \(scrum.name)")
                Text("**\(Image(systemName: "number.square"))**  \(scrum.plateNumber)")
                Text("**\(Image(systemName: "clock"))**  \(scrum.timeWentIn)")
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
        .background(
            NavigationLink("", destination: Text("SLOT: \(scrum.slotNumber) \nNAME: \(scrum.name)"))
                        .opacity(0)
                )
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[1]
    static var previews: some View {
        CardView(scrum: scrum)
            .previewLayout(.fixed(width: 400, height: 130))
            .frame(height:130)
        CardView(scrum: DailyScrum.sampleData[2])
            .previewLayout(.fixed(width: 400, height: 130))
    }
}
