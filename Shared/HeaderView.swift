//
//  HeaderView.swift
//  Dribbble-Unity
//
//  Created by AJ Picard on 9/25/20.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 40, height: 5)
                    .foregroundColor(.white)

                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 40, height: 5)
                    .foregroundColor(.white)

            }
         Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 30))
                .foregroundColor(.white)
            Spacer()
            ZStack {
                Image(systemName: "bell")
                    .font(.system(size: 30))
                    .foregroundColor(.white)

                Circle().frame(width: 20, height: 20)
                    .foregroundColor(Color(#colorLiteral(red: 0.8412457108, green: 0.4454448223, blue: 0.5620307326, alpha: 1)))
                    .offset(x: 8, y: -10)
            }
            Spacer()
            Image("Profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .background(Color(#colorLiteral(red: 0.9985373616, green: 0.4771811366, blue: 0.8272610307, alpha: 1)))
                .cornerRadius(30)
        }
        .padding(.horizontal, 25)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
