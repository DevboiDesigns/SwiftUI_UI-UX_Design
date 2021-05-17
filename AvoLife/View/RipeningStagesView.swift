//
//  RipeningStagesView.swift
//  AvoLife
//
//  Created by Christopher Hicks on 5/16/21.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        })
        .edgesIgnoringSafeArea(.all)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
