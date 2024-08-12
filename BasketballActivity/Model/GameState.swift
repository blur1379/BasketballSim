//
//  GameState.swift
//  BasketballActivity
//
//  Created by Mohammad Blur on 8/12/24.
//



import Foundation

struct GameState {
    let homeScore: Int
    let awayScore: Int
    let scoringTeamName: String
    let lastAction: String

    var winningTeamName: String {
        homeScore > awayScore ? "warriors" : "bulls"
    }
}
