//
//  BigSurSlider.swift
//
//  Created by Aditya Rudrapatna on 18/08/2020.
//  Copyright © 2020 Aditya Rudrapatna. All rights reserved.
//

import SwiftUI

struct BigSurSlider: View {

    @Binding var percentage: Float // a number from 1 to 100
    @Binding var sliderWidth: Float
    @Binding var sliderHeight: Float
    
    let myGray: Color = Color(red: 0.5, green: 0.5, blue: 0.5)
    
    @Binding var image: String // name of the image
    




    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(self.myGray.opacity(0.5))
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: geometry.size.width * CGFloat(self.percentage / 100))
                    Circle()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .frame(width: CGFloat(self.sliderHeight), height: CGFloat(self.sliderHeight), alignment: .trailing)
                        .offset(x: self.percentage == 100 ? CGFloat(self.percentage - self.sliderHeight/2) : CGFloat(self.percentage), y: 0)
                }
                
                // Delete this code if you don't want an image in your slider
                // This is set up to support SF Symbols by default, but of course you can simply remove the systemName parameter to provide whatever image you like
                
                Image(systemName: self.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: CGFloat(self.sliderHeight - 7),height: CGFloat(self.sliderHeight - 7))
                    .foregroundColor(self.myGray.opacity(0.5))
                    .offset(x: 5, y: 0)
            }
            .frame(width: CGFloat(self.sliderWidth), height: CGFloat(self.sliderHeight))
        .cornerRadius(20)
            .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(self.myGray, lineWidth: 0.5)
                )
            .gesture(DragGesture(minimumDistance: 0)
                .onChanged({ value in
                    self.percentage = min(max(0, Float(value.location.x / geometry.size.width * 100)), 100)
                }))
                

        }.frame(width: CGFloat(sliderWidth), height: CGFloat(sliderHeight))
    }
    
}



