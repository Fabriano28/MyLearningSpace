//
//  StrandSelectionView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

struct StrandSelectionView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest var pathCategory: FetchedResults<PathCategory>
    @FetchRequest var learningObject: FetchedResults<Objectives>
    
    init(filter: String) {
            _pathCategory = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "pathNameID == %@", filter))
            _learningObject = FetchRequest(sortDescriptors: [])
    }
    
    var body: some View {
        ZStack {
            Color.init(uiColor: UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00)).ignoresSafeArea()
            VStack(){
                
                List(pathCategory){strandItem in
                    
                    if(strandItem.maxProgress > 1.0){
                        NavigationLink{
                            LearningSpaceView(filter: strandItem.unwrapID, count: learningObject.count)
                        } label: {
                            StrandSelectionRow(catName: strandItem.unwrapName, catCurrProgress: strandItem.currProgress, catMaxProgress: strandItem.maxProgress)
                        }.listRowBackground(Color.clear)
                    } else{
                        StrandSelectionRow(catName: strandItem.unwrapName, catCurrProgress: strandItem.currProgress, catMaxProgress: strandItem.maxProgress)
                            .overlay(Color.init(uiColor: UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 0.80)))
                    }
                    
                }.listStyle(.plain)
            }
        }
        .foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00)))
        .navigationTitle("Strand Selection")
    }
}

struct StrandSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        StrandSelectionView(filter: "PN001")
    }
}
