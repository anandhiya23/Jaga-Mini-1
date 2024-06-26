//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Bintang Anandhiya on 28/03/24.
//

import Foundation
struct Record: Identifiable, Hashable {
    var id: Int
    var name: String
    var plateNumber: String
    var timeWentIn: String
    var slotNumber: Int
}

extension Record {
    
    static let sampleData: [Record] = [
        Record(id: 1, name: "Bintang Anandhiya", plateNumber: "A GYHS TO", timeWentIn: "2/12/22 19:21", slotNumber: 45),
        Record(id: 2,  name: "Zulha Bin Haha", plateNumber: "B 1234 XO", timeWentIn: "2/12/22 21:21", slotNumber: 136),
        Record(id: 3,name: "Felix Laurent", plateNumber: "BM 5888 XG", timeWentIn: "2/2/22 17:21", slotNumber: 7),
        Record(id: 4,name: "Andini Mahala", plateNumber: "C 123H TR", timeWentIn: "2/12/22 17:21", slotNumber: 13),
        Record(id: 5,name: "Ektar Sarif", plateNumber: "C 123H TR", timeWentIn: "2/12/22 17:21", slotNumber: 77),
        Record(id: 6,name: "Bambang Sutedjo", plateNumber: "C 123H TR", timeWentIn: "2/12/22 17:21", slotNumber: 999),
        
    ]
}
