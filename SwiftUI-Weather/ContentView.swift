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
                
                VStack(spacing: 10)  {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    //size of images can be test through trial and error
                    
                    Text("76°")
                        .font(.system(size: 76, weight: .medium))
                    //using this hardcodes the font size. Not dynamic
                        .foregroundColor(.white)
                }
                
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
