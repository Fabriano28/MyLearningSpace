//
//  ContentView.swift
//  MyLearningSpace
//
//  Created by Farrel Brian on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var pathName: FetchedResults<PathName>
    @FetchRequest(sortDescriptors: []) var pathCategory: FetchedResults<PathCategory>
    
    @State private var answer = false
    
    var body: some View {
        
        NavigationView{
            ZStack {
                Color.init(uiColor: UIColor(red: 0.16, green: 0.15, blue: 0.31, alpha: 1.00)).ignoresSafeArea()
                VStack {
                    Image("MLS Logo")
                    
                    PathProgressView()
                    
                    NavigationLink(destination: StrandSelectionView(filter: "PN001"), isActive: $answer, label: {
                            Button(
                                action: {answer.toggle()},
                                label: {Text("Start Learning")}
                            ).padding()
                        }
                    )
                    
//                    NavigationLink(destination: LearningSpaceView(count: .constant(4)), isActive: $answer, label: {
//                            Button(
//                                action: {answer = true},
//                                label: {Text("Start Learning")}
//                            ).padding()
//                        }
//                    )
                    
                    Button("Settings") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.padding()
                    Spacer()
                }
            }.foregroundColor(Color.init(uiColor: UIColor(red: 1.00, green: 0.98, blue: 0.84, alpha: 1.00)))
            .navigationTitle("")
            .navigationBarHidden(true)
        }.onAppear {
            addPath()
        }
    }

    func addPath(){
        
        if(pathName.count == 0){
            
            let resource1 = Resource(context: moc)
            resource1.objectiveID = "TEC053"
            resource1.content = "Placeholder Content"
            
            let resource2 = Resource(context: moc)
            resource2.objectiveID = "TEC055"
            resource2.content = "Placeholder Content"
            
            let resource3 = Resource(context: moc)
            resource3.objectiveID = "TEC056"
            resource3.content = "Placeholder Content"
            
            let resource4 = Resource(context: moc)
            resource4.objectiveID = "TEC057"
            resource4.content = "Placeholder Content"
            
            let resource5 = Resource(context: moc)
            resource5.objectiveID = "TEC058"
            resource5.content = "Placeholder Content"
            
            let objectives1 = Objectives(context: moc)
            objectives1.id = "TEC053"
            objectives1.goalID = "GO001"
            objectives1.name = "I know how to work with Protocols in Swift"
            objectives1.status1 = false
            objectives1.status2 = false
            objectives1.status3 = false
            objectives1.status4 = false
            
            let objectives2 = Objectives(context: moc)
            objectives2.id = "TEC055"
            objectives2.goalID = "GO001"
            objectives2.name = "I can use Conditional Statements in Swift"
            objectives2.status1 = false
            objectives2.status2 = false
            objectives2.status3 = false
            objectives2.status4 = false
            
            let objectives3 = Objectives(context: moc)
            objectives3.id = "TEC056"
            objectives3.goalID = "GO001"
            objectives3.name = "I can apply Swift Basic Concepts and use Swift Basic Elements"
            objectives3.status1 = false
            objectives3.status2 = false
            objectives3.status3 = false
            objectives3.status4 = false
            
            let objectives4 = Objectives(context: moc)
            objectives4.id = "TEC057"
            objectives4.goalID = "GO001"
            objectives4.name = "I can succesfully manage Functions in Swift"
            objectives4.status1 = false
            objectives4.status2 = false
            objectives4.status3 = false
            objectives4.status4 = false
            
            let objectives5 = Objectives(context: moc)
            objectives5.id = "TEC058"
            objectives5.goalID = "GO001"
            objectives5.name = "I know how to work with Loops in Swift"
            objectives5.status1 = false
            objectives5.status2 = false
            objectives5.status3 = false
            objectives5.status4 = false
            
            let goals1 = Goals(context: moc)
            goals1.id = "GO001"
            goals1.categoryID = "PC001"
            goals1.name = "Learn how to use Logic and Programming Languages"
            goals1.status = false
            
            let pathCategory1 = PathCategory(context: moc)
            pathCategory1.id = "PC001"
            pathCategory1.pathNameID = "PN001"
            pathCategory1.name = "Technical"
            pathCategory1.currProgress = 0.0
            pathCategory1.maxProgress = 5.0
            
            let pathCategory2 = PathCategory(context: moc)
            pathCategory2.id = "PC002"
            pathCategory2.pathNameID = "PN001"
            pathCategory2.name = "Process"
            pathCategory2.currProgress = 0.0
            pathCategory2.maxProgress = 0.5
        
            let pathCategory3 = PathCategory(context: moc)
            pathCategory3.id = "PC003"
            pathCategory3.pathNameID = "PN001"
            pathCategory3.name = "Design"
            pathCategory3.currProgress = 0.0
            pathCategory3.maxProgress = 0.5
        
            let pathCategory4 = PathCategory(context: moc)
            pathCategory4.id = "PC004"
            pathCategory4.pathNameID = "PN001"
            pathCategory4.name = "App and Business Marketing"
            pathCategory4.currProgress = 0.0
            pathCategory4.maxProgress = 0.5
        
            let pathCategory5 = PathCategory(context: moc)
            pathCategory5.id = "PC005"
            pathCategory5.pathNameID = "PN001"
            pathCategory5.name = "Professional Skills"
            pathCategory5.currProgress = 0.0
            pathCategory5.maxProgress = 0.5
        
            let pathName1 = PathName(context: moc)
            pathName1.name = "iOS Developer"
            pathName1.id = "PN001"
            
//            pathName1.addToPathcategory(pathCategory1)
//            pathName1.addToPathcategory(pathCategory2)
//            pathName1.addToPathcategory(pathCategory3)
//            pathName1.addToPathcategory(pathCategory4)
//            pathName1.addToPathcategory(pathCategory5)
            
            try? moc.save()
        }
        
    }
    
//    var body: some View {
//        VStack {
//            List(pathName){ path in
//                Text(path.name ?? "Missing")
//            }
//            Button("add") {
//                let name = "iOS Developer"
//
//                let pName = PathName(context: moc)
//                pName.id = UUID()
//                pName.name = name
//
//                try? moc.save()
//            }
//        }
//    }
    
//    func addGoal(){
//        let obj1 = Objectives(context: moc)
//        obj1.name = "obj1 name"
//        let obj2 = Objectives(context: moc)
//        obj2.name = "obj2 name"
//
//        let goal1 = Goals(context: moc)
//        goal1.addToObjectives(obj1)
//        goal1.addToObjectives(obj2)
//
//        try? moc.save()
//
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








