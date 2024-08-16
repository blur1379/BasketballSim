//
//  LiveActivityView.swift
//  GameWidgetExtension
//
//  Created by Mohammad Blur on 8/16/24.
//

import SwiftUI
import WidgetKit

struct LiveActivityView: View {
    var body: some View {
        ZStack {
            Image("activity-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay {
                    ContainerRelativeShape()
                        .fill(.black.opacity(0.3).gradient)
                }
            VStack(spacing: 12) {
                HStack {
                    Image("warriors")
                        .teamLogoModifier(frame: 60)
                    
                    Text("105")
                        .font(.system(size: 40,weight: .bold))
                        .foregroundStyle(.white.opacity(0.9))
                    Spacer()
                    
                    Text("105")
                        .font(.system(size: 40,weight: .bold))
                        .foregroundStyle(.black.opacity(0.7))
                    Image("bulls")
                        .teamLogoModifier(frame: 60)
                }
                
                HStack {
                    Image("warriors")
                        .teamLogoModifier(frame: 20)
                    Text("S. curry drains a 3")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white.opacity(0.9))
                }
            }
        }
        .containerBackground(for: .widget) {
          
        }
    }
}

struct LiveActivityView_Previews: PreviewProvider {
    static var previews: some View {
        LiveActivityView()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
           
    }
}
