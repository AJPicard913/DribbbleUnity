//
//  CircleView.swift
//  Dribbble-Unity
//
//  Created by AJ Picard on 9/25/20.
//

import SwiftUI

struct CircleView: View {
    
    @State var todayCourses = false
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text(todayCourses ? "Completed Today":"Icon Progress")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.bottom, 25)
                        .animation(.spring())
                    Spacer()
                }
                .padding(.leading, 20)
                TopRow(todayCourses: $todayCourses)
                    .padding(.bottom, 10)
                  
                    .onTapGesture {
                        self.todayCourses.toggle()
                    }
                BottomRow(todayCourses: $todayCourses)
                    .padding(.top, 10)
                  
                    .onTapGesture {
                        self.todayCourses.toggle()
                    }
            }
            .frame(height: 300)
            .background(Color(#colorLiteral(red: 0.3237632513, green: 0.3440189362, blue: 0.4454081655, alpha: 1)))
            .cornerRadius(30)
        }
        .padding(.horizontal, 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}

struct Circles: View {
    
    @Binding var todayCourses: Bool

    
    var body: some View {
        ZStack{
            Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2798932195, green: 0.316678673, blue: 0.4243366122, alpha: 1)), Color(#colorLiteral(red: 0.2798932195, green: 0.316678673, blue: 0.4243366122, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/),
                        style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0))
                .frame(width: 70, height: 70)
            
            Circle()
                .trim(from: todayCourses ? 0.3 : 0.8, to: 1)
                .stroke(LinearGradient(gradient: Gradient(colors: [todayCourses ? Color(#colorLiteral(red: 0.2305645009, green: 0.9985300899, blue: 0.3980552372, alpha: 1)) : Color.purple, todayCourses ? Color(#colorLiteral(red: 0.2305645009, green: 0.9985300899, blue: 0.3980552372, alpha: 1)) : Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/),
                        style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0))
                .frame(width: 70, height: 70)
                .rotationEffect(Angle(degrees: todayCourses ? 180 : -20))
            Text(todayCourses ? "7" : "40%")
                .foregroundColor(.white)
                .bold()
                
        }.animation(.spring())
        
    }
}

struct CirclesTwo: View {
    
    @Binding var todayCourses: Bool

    
    var body: some View {
        ZStack{
            Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2798932195, green: 0.316678673, blue: 0.4243366122, alpha: 1)), Color(#colorLiteral(red: 0.2798932195, green: 0.316678673, blue: 0.4243366122, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/),
                        style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0))
                .frame(width: 70, height: 70)
            
            Circle()
                .trim(from: todayCourses ? 0.9 :0.4, to: 1)
                .stroke(LinearGradient(gradient: Gradient(colors: [todayCourses ? Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)) : Color(#colorLiteral(red: 0.3327505887, green: 0.947925508, blue: 0.243660897, alpha: 1)), todayCourses ? Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)) : Color(#colorLiteral(red: 0.3327505887, green: 0.947925508, blue: 0.243660897, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/),
                        style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0], dashPhase: 0))
                .frame(width: 70, height: 70)
                .rotationEffect(Angle(degrees: todayCourses ? -50 : 130))
                
            Text(todayCourses ? "2" : "62%")
                .foregroundColor(.white)
                .bold()
                
        }.animation(.spring())
    }
}

struct BottomRow: View {
    
    @Binding var todayCourses: Bool
    
    var body: some View {
        HStack{
            HStack{
                Image("W")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(15)
                VStack (alignment: .leading){
                    Text("Folio Deesigner")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Text(todayCourses ? "Completed Today" :"UI Design Kit")
                        .foregroundColor(Color(#colorLiteral(red: 0.6681466103, green: 0.7074588537, blue: 0.8976311088, alpha: 1)))
                        .padding(.top, 2)
                        
                }
                Spacer()
                CirclesTwo(todayCourses: $todayCourses)
            }
            .animation(.spring())
        }
        .padding(.horizontal, 20)
    }
}

struct TopRow: View {
    
    @Binding var todayCourses: Bool

    
    var body: some View {
        HStack{
            HStack{
                Image("T")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(15)
                VStack (alignment: .leading){
                    Text("Unity Comps")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Text(todayCourses ? "Completed Today" : "New 3D Kit")
                        .foregroundColor(Color(#colorLiteral(red: 0.6681466103, green: 0.7074588537, blue: 0.8976311088, alpha: 1)))
                        .padding(.top, 2)
                        
                }
                Spacer()
                Circles(todayCourses: $todayCourses)
            }
            .animation(.spring())
        }
        .padding(.horizontal, 20)
    }
}
