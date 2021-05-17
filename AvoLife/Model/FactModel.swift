//
//  FactModel.swift
//  AvoLife
//
//  Created by Christopher Hicks on 5/16/21.
//

import SwiftUI

//MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
