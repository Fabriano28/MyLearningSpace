//
//  ResourcesView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI
import AVKit

struct ResourcesView: View {
    
    @FetchRequest var res: FetchedResults<Resource>
    @FetchRequest var obj: FetchedResults<Objectives>
    @FetchRequest var cat: FetchedResults<PathCategory>
    
    init(filter: String) {
            _res = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "objectiveID == %@", filter))
            _obj = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "id == %@", filter))
            _cat = FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "id == %@", "PC001"))
    }
    
    var body: some View {
        ZStack {
            Color.init(uiColor: UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00)).ignoresSafeArea()
            VStack{
                
                ForEach(res){i in
                    Text("\(i.unwrapObjectiveID) - Remember")
                        .fontWeight(.bold)
                        .font(.system(size: 28))
                    VideoPlayer(player: AVPlayer(url:  URL(string: "https://drive.google.com/file/d/1j10pPy_kkuHHza5JE_n8qCnSYRMVInoP/view?usp=sharing")!))
                        .frame(height: 250)
                    Text(i.unwrapContent)
                    Spacer()
                }.onAppear {
                    for i in obj {
                        i.status1 = true
                    }
                    for i in cat {
                        if i.currProgress <= 5.0 {
                            i.currProgress += 1
                        }
                                            }
                }
            }
            .frame(width: 350)
        }
        .foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00)))
    }
}

struct ResourcesView_Previews: PreviewProvider {
    static var previews: some View {
        ResourcesView(filter: "")
    }
}
