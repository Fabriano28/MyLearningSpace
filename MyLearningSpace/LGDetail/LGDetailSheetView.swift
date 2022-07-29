//
//  LGDetailSheetView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 28/07/22.
//

import SwiftUI

struct LGDetailSheetView: View {
    var body: some View {
        ZStack {
            Color.init(uiColor: UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00)).ignoresSafeArea()
            VStack{
                Text("TEC018")
                Text("I know how to implement Text Views with UIKit")
                
                VStack(alignment: .leading){
                    Text("Objectives")
                    
                    Text(" Remember")
                        .frame(width: 350, height: 44, alignment: .leading)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.init(uiColor: UIColor(red: 0.30, green: 0.30, blue: 0.49, alpha: 1.00)))
                        )

                }
                
                Spacer()
            }
        }
        .foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00)))
    }
}

struct LGDetailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        LGDetailSheetView()
    }
}
