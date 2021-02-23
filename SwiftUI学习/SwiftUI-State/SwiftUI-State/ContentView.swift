//
//  ContentView.swift
//  SwiftUI-State
//
//  Created by axzq on 2021/2/4.
//  Copyright © 2021 axzq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    /// 定义一个储存属性
    var tapCount = 0
    
    @State private var tapCountTwo = 0
    var body: some View {
        //如果和在SwiftUI上 修改状态 - 例子 ： 创建点击事件按钮，修改变量的值
        //使用闭包的方式 创建一个带点击事件的按钮
        Button("Tap Count:\(tapCountTwo)") {
            //self.tapCount += 1
            //这样看起来很合理 由于contenView是个stuct，如果修改结构体中的储存属性，需要加上mutating，例如 mutating var body: some View，但是swift中不允许我们创建一个可变的计算属性
            // 根据这种情况 SwiftUI中为我们提供一个@State 属性包装器 @State允许我们绕过结构体的限制：我们知道不能更改它们的属性，因为结构是固定的，但是@State允许SwiftUI将该值单独存储在可以修改的地方。
            self.tapCountTwo += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
