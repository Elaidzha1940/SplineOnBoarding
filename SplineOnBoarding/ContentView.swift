//  /*
//
//  Project: SplineOnBoarding
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.02.2024
//
//  */

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        
        VStack {
            OnBoard3DView()
                .foregroundStyle(.white)
                .frame(height: 500)
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                Text("Build Your Brand")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                
                Text("Stay up to date with your social.")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
            }
            .padding(.horizontal)

            Spacer()
            
            Button(action: {
                //action
            }, label: {
                Text("Get Started")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black.gradient)
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .padding()
            })
        }
        .background(Color.black.opacity(0.9))
    }
}

#Preview {
    ContentView()
}

struct OnBoard3DView: View {
    var body: some View {
        
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/PJ0L1GWTkPOMXnPJLJIN/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url)
    }
}
