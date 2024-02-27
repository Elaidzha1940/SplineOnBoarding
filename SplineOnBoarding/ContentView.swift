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
                    .foregroundStyle(
                        Gradient(colors:
                                    [Color.white.opacity(0.8), Color.green.opacity(0.6)]))
                
                Text("Spline is an easy to use 3D design tool geared for any designer regardless of their 3D experience. ")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundStyle(.white.opacity(0.7))
            }
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                //action
            }, label: {
                Text("Get Started")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        Gradient(colors:
                                    [Color.white.opacity(0.6), Color.green.opacity(0.5)]))
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    .padding()
            })
        }
        .background(Color.black.opacity(0.7))
    }
}

#Preview {
    ContentView()
}

struct OnBoard3DView: View {
    var body: some View {
        
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/9PrRdE773-uZjr3NtBlK/scene.splineswift")!
        
        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!
        
        try? SplineView(sceneFileURL: url)
    }
}
