//
//  UserView.swift
//  Dribbble-Unity
//
//  Created by AJ Picard on 9/25/20.
//

import SwiftUI

struct UserView: View {
    
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    VStack (alignment: .leading) {
                        Text("Total Users")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                        Text("Tap the card for additional analytics")
                            .font(.system(size: 14, weight: .medium, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.6621201634, green: 0.6988828182, blue: 0.8904084563, alpha: 1)))
                            .padding(.top, 0)
                    }
                    Spacer()
                                    }
                .padding(.leading, 20)
                .padding(.bottom, 10)
                
                UsersTop()
                    
                
                Divider()
                    .background(Color.white)
                    .background(Color.white).opacity(0.4)
                UsersBottom()
               
                Divider()
                    .background(Color.white).opacity(0.4)
                HStack {
                    Text("Go to setting")
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.5009624362, green: 0.6348465085, blue: 0.9991464019, alpha: 1)))
                        .padding(.top, 10)
                    
                }
            }
            .frame(height: 430)
            .background(Color(#colorLiteral(red: 0.3237632513, green: 0.3440189362, blue: 0.4454081655, alpha: 1)))
            .cornerRadius(30)
        }
        .padding(.horizontal, 10)
        
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}



struct UsersTop: View {
    
    @State var dailyUsers = false
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(dailyUsers ? "New Users Today" : "September Users")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.6681466103, green: 0.7074588537, blue: 0.8976311088, alpha: 1)))
                    .animation(.spring())
                Text(dailyUsers ? "10k" : "57m")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .animation(.spring())
                Text(dailyUsers ? "1.5%" : "21.77%")
                    .foregroundColor(Color(#colorLiteral(red: 0.7004736066, green: 0.9987290502, blue: 0.8226127028, alpha: 1)))
                    .font(.system(size: 17, weight: .bold, design: .rounded))
                    .animation(.spring())
                
            }
            Spacer()
            HStack (alignment: .bottom){
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: dailyUsers ? 10 : 40)
                    .foregroundColor(dailyUsers ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: dailyUsers ? 5 : 75)
                    .foregroundColor(dailyUsers ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : Color(#colorLiteral(red: 0.2374964952, green: 0.4347394109, blue: 0.9952539802, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: dailyUsers ? 50 : 60)
                    .foregroundColor(dailyUsers ? Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)) :Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: dailyUsers ? 75 : 70)
                    .foregroundColor(dailyUsers ? Color(#colorLiteral(red: 0.2305645009, green: 0.9985300899, blue: 0.3980552372, alpha: 1)) : Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: dailyUsers ? 75 : 45)
                    .foregroundColor(dailyUsers ? Color(#colorLiteral(red: 0.2305645009, green: 0.9985300899, blue: 0.3980552372, alpha: 1)) : Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                
            }
            .onTapGesture {
                self.dailyUsers.toggle()
            }
            
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 30)
    }
}

struct UsersBottom: View {
    
    @State var retention = false
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(retention ? "Rentention Today" :"New Users")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.6681466103, green: 0.7074588537, blue: 0.8976311088, alpha: 1)))
                    .animation(.spring())
                Text(retention ? "7k" : "36k")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .animation(.spring())
                Text(retention ? "40%":"21.77%")
                    .foregroundColor(Color(#colorLiteral(red: 0.7004736066, green: 0.9987290502, blue: 0.8226127028, alpha: 1)))
                    .font(.system(size: 17, weight: .bold, design: .rounded))
                    .animation(.spring())
                
            }
            Spacer()
            HStack (alignment: .bottom){
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: retention ? 5 : 40)
                    .foregroundColor(retention ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: retention ? 10 : 75)
                    .foregroundColor(retention ? Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)) : Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: retention ? 50 : 60)
                    .foregroundColor(retention ? Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)) : Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: retention ? 75 : 70)
                    .foregroundColor(retention ? Color(#colorLiteral(red: 0.2305645009, green: 0.9985300899, blue: 0.3980552372, alpha: 1)) : Color(#colorLiteral(red: 0.5825235248, green: 0.5357083678, blue: 0.9982408881, alpha: 1)))
                    .animation(.spring())
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: retention ? 75 : 45)
                    .foregroundColor(retention ? Color(#colorLiteral(red: 0.2305645009, green: 0.9985300899, blue: 0.3980552372, alpha: 1)) : Color(#colorLiteral(red: 0.8405339122, green: 0.9967582822, blue: 0.9985300899, alpha: 1)))
                    .animation(.spring())
                
            }
        }
        .onTapGesture {
            self.retention.toggle()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 30)
    }
}
