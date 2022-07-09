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
            LinearGradient(gradient: Gradient(colors: [.blue, .orange, Color("LightBlue")]),
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
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 74)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.sun.fill", temperature: 88)
                   
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.dust.fill", temperature: 39)
                  
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.bolt.fill", temperature: 90)
                  
                    WeatherDayView(dayOfWeek: "SAT", imageName: "wind", temperature: 60)
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

struct WeatherDayView: View {

    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
