//
//  StrandSelectionRow.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

struct StrandSelectionRow: View {
    
    @State var catName: String
    @State var catCurrProgress: Double
    @State var catMaxProgress: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15).fill(Color.init(uiColor: UIColor(red: 0.30, green: 0.30, blue: 0.49, alpha: 1.00)))
            VStack {
                Text(catName + " Learning Objective")
                    .fontWeight(.bold)
                    .font(.system(size: 21))
                Text(String(Int(catCurrProgress)) + " / " + String(Int(catMaxProgress)))
            }
        }
        .frame(width: 350, height: 70, alignment: .center)
        .background(Color.clear)
        .listRowBackground(Color.clear)
    }
}

struct StrandSelectionRow_Previews: PreviewProvider {
    static var previews: some View {
        StrandSelectionRow(catName: "A", catCurrProgress: 2, catMaxProgress: 4)
    }
}
