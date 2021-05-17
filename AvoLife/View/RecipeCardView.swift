//
//  RecipeCardView.swift
//  AvoLife
//
//  Created by Christopher Hicks on 5/16/21.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - PROPERTIES
    
    @State private var showModal = false
    
    //MARK: - BODY
    var recipe: Recipe
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color(blackTranLight), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 20)
                            Spacer()
                        }
                    }
                )//: Overlay
            VStack(alignment: .leading, spacing: 12, content: {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .italic()
                
                // RATES
                RecipeRatingView(recipe: recipe)
                
                // COOKING
                RecipeCookingView(recipe: recipe)
                
            })
            .padding()
            .padding(.bottom, 12)
            
        } //: VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color(blackTranLight), radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
