//
//  ContentView.swift
//  SwiftUI-Form
//
//  Created by axzq on 2021/2/4.
//  Copyright © 2021 axzq. All rights reserved.
//

import SwiftUI
//创建一个结构体，遵守View的协议，view是所有屏幕显示的内容的基本协议
struct ContentView: View {
    var body: some View {
        
        //这个必须返回同一类型的视图
                Form {
                    //创建一个文本视图,内容为Hello, World!
                    
        //            Text("Hello, World!")
                    
                    
                    //SwiftUI中 一个父视图中，最多只能有10个子视图
                    //如果想要解决这个问题 我们可以使用Group来将解决
                    //相当于表哥头视图 和尾视图  通过这种方式可以将表单拆分成多个部分
                    Section {
                        Text("Hello,dasdsadsa")
                    }
                    
                    Group {

                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                    }
                    Group {
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                    }

                    Group {

                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                    }
                    Group {

                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                        Text("Hello, World!")
                    }
                    
                    Section {
                        Text("footer")
                        Text("Hello, World!")
                    }
                    
                }
                
                
                //这样直接发安徽两个文本内容k容器是错误的，需要被包裹在一个容器中 入Form表单
        //        Text("Hello, World!")
        //        Text("Hello, world!")
    }
}
// 它遵循PreviewProvider协议。这段代码实际上不会构成最终应用程序的一部分，而是专门供Xcode使用，以便它可以在代码旁边显示UI设计的预览。
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
