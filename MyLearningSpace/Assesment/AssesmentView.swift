//
//  AssesmentView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

struct AssesmentView: View {
    var body: some View {
        ZStack {
            Color.init(uiColor: UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00)).ignoresSafeArea()
            VStack{
                Text("Lorem")
                Spacer()
            }
            .frame(width: 350)
        }
        .foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00)))
        .navigationTitle("Strand Selection")
    }
}

struct AssesmentView_Previews: PreviewProvider {
    static var previews: some View {
        AssesmentView()
    }
}
