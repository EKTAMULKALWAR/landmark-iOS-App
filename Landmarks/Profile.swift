//
//  Profile.swift
//  Landmarks
//
//  Created by Ekta Mulkalwar on 10/07/24.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.spring
    
    static let `default` = Profile(username: "Mike")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "☀️"
        case autumn = "🌾"
        case winter = "❄️"
        var id: String {rawValue}
    }
}
