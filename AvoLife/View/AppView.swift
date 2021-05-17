//
//  AddView.swift
//  AvoLife
//
//  Created by Christopher Hicks on 5/16/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvodcadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .previewDevice("iPhone 12 Pro")
    }
}
