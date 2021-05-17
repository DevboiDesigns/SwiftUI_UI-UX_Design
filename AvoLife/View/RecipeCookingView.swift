//
//  RecipeCookingView.swift
//  AvoLife
//
//  Created by Christopher Hicks on 5/16/21.
//

import SwiftUI

struct RecipeCookingView: View {
    //MARK: - PROPERTIES
    
    var recipe: Recipe
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 12, content: {
            HStack {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        })
        .font(.footnote)
        .foregroundColor(Color.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
    }
}
