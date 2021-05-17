//
//  AvodcadosView.swift
//  AvoLife
//
//  Created by Christopher Hicks on 5/16/21.
//

import SwiftUI

struct AvodcadosView: View {
    //MARK: - PROPERTIES
    
    @State private var pulseAnimation = false
    
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color(blackTranDark), radius: 12, x: 0.0, y: 8)
                .scaleEffect(pulseAnimation ? 1 : 0.9)
                .opacity(pulseAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avodcados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color(blackTranDark), radius: 4, x: 0, y: 4)
                
                Text("""
                    Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
    """)
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color(greenLight))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            pulseAnimation.toggle()
        })
    }
}

struct AvodcadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvodcadosView()
            .previewDevice("iPhone 12 Pro")
            //.environment(\.colorScheme, .dark)
    }
}
