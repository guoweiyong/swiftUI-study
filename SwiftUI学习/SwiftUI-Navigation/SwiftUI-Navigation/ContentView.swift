//
//  ContentView.swift
//  SwiftUI-Navigation
//
//  Created by axzq on 2021/2/4.
//  Copyright © 2021 axzq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //以同样的方式 防止一个导航栏视图 swiftUI中 NavigationView
        NavigationView {
            Form {
                Section {
                    Text("hello World!")
                }
            }.navigationBarTitle("SwiftUI导航栏").navigationBarItems(leading: Text("左侧lable"))  //链式语法来赋值
            //参考页面 iphone手机设置页面
            // navigationBarTitle("SwiftUI导航栏", displayMode: .inline) //使用一个小的标题
            
            //navigationBarTitle("SwiftUI导航栏")
            //当我们将.navigationBarTitle()修饰符附加到表单时，Swift实际上会创建一个新表单，该表单具有导航栏标题和您提供的所有现有内容。
            
            //因此使用大标题是很常见的
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
