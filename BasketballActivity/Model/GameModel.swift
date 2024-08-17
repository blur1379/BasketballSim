//
//  GameModel.swift
//  BasketballActivity
//
//  Created by Mohammad Blur on 8/12/24.
//
import Foundation
import ActivityKit

final class GameModel: ObservableObject, GameSimulatorDelegate {

    @Published var gameState = GameState(homeScore: 0,
                                         awayScore: 0,
                                         scoringTeamName: "",
                                         lastAction: "")
    let simulator = GameSimulator()
    var liveActivity: Activity<GameAttributes>? = nil
    init() {
        simulator.delegate = self
    }

    
    func startLiveActivity() {
        let attributes = GameAttributes(homeTeam: "warriors", awayTeam: "bulls")
        let gameState = GameAttributes.ContentState(gameState: self.gameState)
        
        
        do {
            let _ = try Activity.request(attributes: attributes, content: .init(state: gameState, staleDate: nil))
        } catch {
            print(error.localizedDescription)
        }
    }
    func didUpdate(gameState: GameState) {
        self.gameState = gameState
        Task {
            await liveActivity?.update(using: .init(gameState: gameState))
        }
    }

    func didCompleteGame() {
        Task {
            await liveActivity?.end(using: .init(gameState: simulator.endGame()))
        }
    }


    // Live Activity code goes here
}
