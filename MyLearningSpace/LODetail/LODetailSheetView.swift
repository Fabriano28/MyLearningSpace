//
//  LODetailSheetView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

struct LODetailSheetView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest var objs: FetchedResults<Objectives>
    @State var showResource = false
    @State var showAssesment = false
    @State var title: String
    @State var subTitle: String
    
    init(filter: String, id: State<String>) {

        _objs = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "id == %@", filter))
            _title = id
            _subTitle = id

    }
    
    var body: some View {
        
        ZStack {
            Color.init(uiColor: UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00)).ignoresSafeArea()
            VStack{
                
                ForEach(objs){i in
                    Text(i.unwrapID)
                    Text(i.unwrapName)
                    
                    VStack(alignment: .leading){
                        Text("Objectives")
                        
                        Button(action: {
                            title = i.unwrapID
                            showResource.toggle()
                        }, label: {
                            Text(" Remember")
                                .frame(width: 350, height: 44, alignment: .leading)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.init(uiColor: UIColor(red: 0.30, green: 0.30, blue: 0.49, alpha: 1.00)))
                                )
                        })
                        .sheet(isPresented: $showResource){
                            ResourcesView(filter: title)
                        }
                        
                        Button(action: {
                            showAssesment.toggle()
                        }, label: {
                            Text(" Understand")
                                .frame(width: 350, height: 44, alignment: .leading)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.init(uiColor: UIColor(red: 0.30, green: 0.30, blue: 0.49, alpha: 1.00)))
                                )
                        }).sheet(isPresented: $showAssesment){
                            AssesmentView()
                        }
                        
                        Button(action: {
                            showAssesment.toggle()
                        }, label: {
                            Text(" Apply")
                                .frame(width: 350, height: 44, alignment: .leading)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.init(uiColor: UIColor(red: 0.30, green: 0.30, blue: 0.49, alpha: 1.00)))
                                )
                        }).sheet(isPresented: $showAssesment){
                            AssesmentView()
                        }
                        
                        Button(action: {
                            showAssesment.toggle()
                        }, label: {
                            Text(" Analyze")
                                .frame(width: 350, height: 44, alignment: .leading)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.init(uiColor: UIColor(red: 0.30, green: 0.30, blue: 0.49, alpha: 1.00)))
                                )
                        }).sheet(isPresented: $showAssesment){
                            AssesmentView()
                        }
                    }
                }
                
                Spacer()
            }
        }
        .foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00)))
    }
}

//struct LODetailSheetView_Previews: PreviewProvider {
//
//    @State var title = "TEC057"
//
//    static var previews: some View {
//
//        
//        LODetailSheetView(filter: title)
//    }
//}
