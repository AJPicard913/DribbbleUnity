//
//  ContentView.swift
//  Shared
//
//  Created by AJ Picard on 9/25/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
                .padding(.top, 30)
            Spacer().frame(height: 20)
            UserView()
                .padding(.bottom, 15)
            CircleView()
        }
        .frame(maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.2885755897, green: 0.3045906126, blue: 0.3890332878, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}























//// Green Circle
//Circle()
//    .trim(from: 0.4, to: 1)
//    .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3327505887, green: 0.947925508, blue: 0.243660897, alpha: 1)), Color(#colorLiteral(red: 0.3327505887, green: 0.947925508, blue: 0.243660897, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/),
//            style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0))
//    .frame(width: 80, height: 80)
//    .rotationEffect(Angle(degrees: 130))
