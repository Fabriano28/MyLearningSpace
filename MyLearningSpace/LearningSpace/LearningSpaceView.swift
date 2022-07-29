//
//  LearningSpaceView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI
import HalfASheet
import WrappingHStack

struct LearningSpaceView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest var goals: FetchedResults<Goals>
    @FetchRequest var objs: FetchedResults<Objectives>
    @State var showGoalDetail = false
    @State var title: String = ""
    @State var subTitle: String = ""
    var counts: Int
    
    init(filter: String, count: Int) {
            _goals = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "categoryID == %@", filter))
            _objs = FetchRequest(sortDescriptors: [])
            counts = count
    }
    
    
    var body: some View {
  
//        let numOfLoop = counts / 3
//        let remainder = counts % 3
        
        ZStack {
            Image("MapBg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                
                Image("SunUncleared").resizable()
                   .frame(width: 100, height: 100)
                
                WrappingHStack(objs, id: \.self, alignment: .center){ i in
                    
                        Button(action: {
                            
                            title = i.unwrapID
                            subTitle = i.unwrapName
                            showGoalDetail.toggle()
                            
                        }, label: {starCheck(starStatus: i.status1)})
                    
                    
                }.frame(width: 240, alignment: .center)
                Spacer()
            }
        
            HalfASheet(isPresented: $showGoalDetail){
                LODetailSheetView(filter: title, id: _title)
            }
                .height(.proportional(0.40))
                .backgroundColor(UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00))
                .closeButtonColor(UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00))
            
            
        }.navigationTitle("Learning Space")
        
//        VStack {
        //
//                        Button(action: {showGoalDetail.toggle()}, label: {Image("SunCleared")
//                            .resizable()
//                            .frame(width: 100, height: 100)})
        //
        //                ForEach(1...numOfLoop, id: \.self){i in
        //
        //                    HStack{
        //                        Image("StarCleared")
        //                            .resizable()
        //                            .frame(width: 65, height: 65)
        //                        Image("StarCleared")
        //                            .resizable()
        //                            .frame(width: 65, height: 65)
        //                    }
        //                    Image("StarCleared")
        //                        .resizable()
        //                        .frame(width: 65, height: 65)
        //
        //                }
        //
        //                if(remainder == 1){
        //                    Image("StarCleared")
        //                        .resizable()
        //                        .frame(width: 65, height: 65)
        //                }else if(remainder == 2){
        //                    HStack{
        //                        Image("StarCleared")
        //                            .resizable()
        //                            .frame(width: 65, height: 65)
        //                        Image("StarCleared")
        //                            .resizable()
        //                            .frame(width: 65, height: 65)
        //                    }
        //                }
        //                Spacer()
        //            }
        //            .foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00)))
        //            .navigationTitle("Learning Space")
    }
    
    @ViewBuilder func starCheck(starStatus: Bool) -> some View{
        
        if(starStatus){
             Image("StarCleared").resizable()
                .frame(width: 65, height: 65)
        }else{
             Image("StarUncleared").resizable()
                .frame(width: 65, height: 65)
        }
    }
}

struct LearningSpaceView_Previews: PreviewProvider {
    static var previews: some View {
        LearningSpaceView(filter: "PC001", count: 5)
    }
}
