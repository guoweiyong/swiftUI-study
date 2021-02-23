//
//  ContentView.swift
//  SwiftUI-UIControlBind
//
//  Created by axzq on 2021/2/4.
//  Copyright © 2021 axzq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //如果实现属性和 UI控件的绑定 使用的是$符号，如果属性前不使用$(属性的值是读的，也是写的。)符号，就表示读取属性，并不形成双向绑定，也不能修改属性
        @State private var name = ""
        
        var body: some View {
            Form {
                TextField("Enter your name", text: $name)
                Text("Your name is: \(name)")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
