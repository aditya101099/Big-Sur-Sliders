//
//  DemoView.swift
//  BigSurSlider
//
//  Created by Aditya Rudrapatna on 19/08/2020.
//  Copyright © 2020 Aditya Rudrapatna. All rights reserved.
//

import SwiftUI

struct DemoView: View {
    
    @State var percentage: Float = 50
    @State var percentage2: Float = 50

    // Define slider width and height here
    @State var sliderWidth: Float = 200
    @State var sliderHeight: Float = 22
    
    // Define image glyphs
    
    @State var image: String = "sun.max"
    @State var slider2: String = "speaker"
    

    
    var body: some View {
            ZStack(alignment: .center) {
                Image("BigSur")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                Rectangle()
                    .frame(width: 400, height: 400)
                    .foregroundColor(Color.white.opacity(0.4))
                    .cornerRadius(20)
                VStack {
//                    HStack {
//                        Text("Control Center")
//                            .font(.body)
//                            .fontWeight(.semibold)
//                            .foregroundColor(Color.black.opacity(0.5))
//                            .offset(x: -30, y: -10)
//                        Spacer()
//                            .frame(width: 200)
//                    }
                    Text("Control Center")
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black.opacity(0.5))
                        .offset(x: -120, y: -10)
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 100)
                            .foregroundColor(Color(red: 1, green: 1, blue: 1).opacity(0.5))
                            .cornerRadius(20)
                        VStack {
                            HStack {
                                Text("Display")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black.opacity(0.5))
                                    .offset(x: -5, y: -3)
                                Spacer()
                                    .frame(width: 200)
                            }
                                
                            BigSurSlider(percentage: $percentage, sliderWidth: $sliderWidth, sliderHeight: $sliderHeight, image: $image)
                                .padding(.bottom, 15.0)
                        }
                    }
                    Spacer()
                        .frame(height: 100)
                    ZStack {
                        Rectangle()
                            .frame(width: 300, height: 100)
                            .foregroundColor(Color(red: 1, green: 1, blue: 1).opacity(0.5))
                            .cornerRadius(20)
                        VStack {
                            HStack {
                                Text("Sound")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black.opacity(0.5))
                                    .offset(x: -5, y: -3)

                                Spacer()
                                    .frame(width: 200)
                            }
                                
                            BigSurSlider(percentage: $percentage2, sliderWidth: $sliderWidth, sliderHeight: $sliderHeight, image: $slider2)
                                .padding(.bottom, 15.0)
                        }
                    }
                }

            }
    }
    

}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()


    }
}
