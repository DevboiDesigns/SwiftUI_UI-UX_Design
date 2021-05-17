//
//  SettingsView.swift
//  AvoLife
//
//  Created by Christopher Hicks on 5/16/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    //MARK: - BODY
    var body: some View {
        
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color(blackTranLight), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color(greenAdapt))
            }
            .padding()
            
            Form {
                //MARK: - Section  1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background Refresh")
                    })
                }
                
                //MARK: - Section 2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipe")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone/ iPad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("John/ Jane")
                        }
                        HStack {
                            Text("Designer")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Christopher Hicks")
                        }
                        HStack {
                            Text("Website")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("www.omboiofficial.com")
                        }
                        HStack {
                            Text("Version")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message")
                            Spacer()
                            Text("Happy Coding")
                        }
                    }
                    
                    
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
