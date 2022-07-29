//
//  PathProgressView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

struct PathProgressView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var pathCategory: FetchedResults<PathCategory>
    
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 15).fill(Color.init(uiColor: UIColor(red: 0.30, green: 0.30, blue: 0.49, alpha: 1.00))).frame(width: 300, alignment: .center)
            VStack(spacing: 10){
                Text("iOS Development Path").frame(width: 280, height: 30, alignment: .leading)
                
                List(pathCategory){pathItem in
                    PathProgressRow(name: pathItem.unwrapName, currProgress: pathItem.currProgress, maxProgress: pathItem.maxProgress)
                }.listStyle(.plain)
                
//                List(pathName.pathCategoryArray){pathItem in
//                    PathProgressRow(name: pathItem.unwrappedName, currProgress: pathItem.currProgress, maxProgress: pathItem.maxProgress)
//                }.listStyle(.plain)
                Spacer()
            }
        }
        .frame(width: 300, height: CGFloat((pathItem.count + 1) * 55))
        .foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00))).frame(width: 280)
    }
}

struct PathProgressView_Previews: PreviewProvider {
    static var previews: some View {

        PathProgressView()

    }
}
