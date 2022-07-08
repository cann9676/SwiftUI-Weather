//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Chelsea Hannah on 7/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .orange, .white]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                //Spacers allow you to move the
                //order of the modifer matters
                 
                }
            }
        }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
