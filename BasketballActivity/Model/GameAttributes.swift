//
//  GameAttributes.swift
//  BasketballActivity
//
//  Created by Mohammad Blur on 8/16/24.
//

import SwiftUI
import ActivityKit

struct GameAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var gameState: GameState
    }
    var homeTeam: String
    var awayTeam: String
}
