//
//  PathProgressRow.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

struct PathProgressRow: View {
    
    @State var name: String
    @State var currProgress: Double
    @State var maxProgress: Double
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(name)
                ProgressView(value: currProgress, total: maxProgress)
                Spacer()
            }
        }.listRowBackground(Color.clear)
    }
}

struct PathProgressRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PathProgressRow(name: "A", currProgress: 0, maxProgress: 100)
        }.previewLayout(.fixed(width: 280, height: 38))
    }
}
