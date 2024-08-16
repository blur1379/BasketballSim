//
//  GameLiveActivity.swift
//  GameWidget
//
//  Created by Mohammad Blur on 8/16/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct GameAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var gameState: GameState
    }
    var homeTeam: String
    var awayTeam: String
}

struct GameLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: GameAttributes.self) { context in
            LiveActivityView()

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    HStack {
                        Image("warriors")
                            .teamLogoModifier(frame: 40)
                        Text("100")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                DynamicIslandExpandedRegion(.trailing) {
                    HStack {
                        Text("100")
                            .font(.title)
                            .fontWeight(.semibold)
                        Image("bulls")
                            .teamLogoModifier(frame: 40)
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    HStack {
                        Image("warriors")
                            .teamLogoModifier(frame: 20)
                        Text("S. Carry drains a 3")
                            
                    }
                }
                DynamicIslandExpandedRegion(.center) {
                    Text("5:24 3Q")
                    // more content
                }
            } compactLeading: {
                HStack {
                    Image("warriors")
                        .teamLogoModifier()
                    Text("100")
                        .fontWeight(.semibold)
                }
            } compactTrailing: {
                HStack {
                    Text("100")
                        .fontWeight(.semibold)
                    
                    Image("warriors")
                        .teamLogoModifier()
                }
            } minimal: {
                Image("warriors")
                    .teamLogoModifier()
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension GameAttributes {
    fileprivate static var preview: GameAttributes {
        GameAttributes(homeTeam: "some team", awayTeam: "sss")
    }
}

extension GameAttributes.ContentState {
    fileprivate static var smiley: GameAttributes.ContentState {
        GameAttributes.ContentState(gameState: GameState(homeScore: 1, awayScore: 2, scoringTeamName: "some team", lastAction: "some action"))
     }
     
     fileprivate static var starEyes: GameAttributes.ContentState {
         GameAttributes.ContentState(gameState: GameState(homeScore: 1, awayScore: 2, scoringTeamName: "some team", lastAction: "some action"))
     }
}

#Preview("Notification", as: .content, using: GameAttributes.preview) {
   GameLiveActivity()
} contentStates: {
    GameAttributes.ContentState.smiley
    GameAttributes.ContentState.starEyes
}
