//
//  ContentView.swift
//  SwiftUI-ForEach
//
//  Created by axzq on 2021/2/4.
//  Copyright © 2021 axzq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //常量不需要@State修饰 ，因为常量不会改变
    let student = ["Hanry","hermione","Ron"]
    
    @State private var currentStudent = 0
    
    var body: some View {
       // 使用循环创建多个窗体  可以绕过手动创建视图不能超过10个的限制影响
//        Form {
////            ForEach(0..<100) { index in
////                Text("\(index)")
////            }
//
//
//            //ForEach 使用闭包，我们可以对参数名使用速记语法
//            ForEach(0..<100) {
//                Text("\($0)")
//            }
//        }
        
        VStack {
            //原来的PiackerView
            Picker("Selected your Student", selection: $currentStudent) {
                ForEach(0..<student.count) { index in
                    Text(self.student[index])
                    //Text(self.student[$0])
                }
            }
            Text("Your choose :Student #\(student[currentStudent])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
