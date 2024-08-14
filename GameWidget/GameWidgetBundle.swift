//
//  GameWidgetBundle.swift
//  GameWidget
//
//  Created by Mohammad Blur on 8/16/24.
//

import WidgetKit
import SwiftUI

@main
struct GameWidgetBundle: WidgetBundle {
    var body: some Widget {
        GameWidget()
        GameLiveActivity()
    }
}
