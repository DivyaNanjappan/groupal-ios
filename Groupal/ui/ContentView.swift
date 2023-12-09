//
//  ContentView.swift
//  Groupal
//
//  Created by Divya N on 08/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        VStack {
            if isActive {
                NavigationView {
                    MainScreen()
                }
            } else {
                // Splash screen
                VStack {
                    Image(AppStrings.imageSplash)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .padding()
                }
                .onAppear {
                    // Simulate a delay to display the splash screen
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
