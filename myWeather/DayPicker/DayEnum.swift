//
//  DayEnum.swift
//  myWeather
//
//  Created by iHRomnik on 01.03.2024.
//

import Foundation

enum Day: Int {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    static let allDay: [Day] = [monday, tuesday, wednesday, thursday, friday, saturday, sunday]
    
    var title : String {
        switch self {
        case .monday: 
            return "Pn"
        case .tuesday:
            return "Vt"
        case .wednesday:
            return "Sr"
        case .thursday:
            return "Ch"
        case .friday:
            return "Pt"
        case .saturday:
            return "Sb"
        case .sunday:
            return "VS"
        }
    }
}


enum DayTest: String {
    case monday = "Pn"
    case tuesday = "Vt"
    case wednesday = "Sr"
    case thursday = "Ch"
    case friday = "Pt"
    case saturday = "Sb"
    case sunday = "Vs"
    
}



