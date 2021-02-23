//
//  ContentView.swift
//  SwiftUI-Demo
//
//  Created by axzq on 2021/2/5.
//  Copyright © 2021 axzq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //1.我们构建一个账单分割应用程序，这意味着用户需要输入他们的账单话费、多少人分担，以及他们想留下的消费， 所以我需要声明3个可以修改的属性
    @State private var currentMonery = "" //SwiftUI必须使用字符串来存储TextField输入值。
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2 //百分比数组的下标
    
    let tipPercentages = [10,15,20,25,0] //百分比  例子10 代表想留下10%的消费
    
    //定义一个计算属性，计算每个人最终应付的钱数
    var totolPerPerson: Double {
        let perpleCount = Double(numberOfPeople+2)//用餐人数
        let tipSelection = Double(tipPercentages[tipPercentage])//给小费的%比
        let orderAmout = Double(currentMonery) ?? 0 //订单签署
        
        let tipValue = orderAmout / 100  * tipSelection //小费
        let grandTotal = orderAmout + tipValue //总钱数
        let amoutPerPerson = grandTotal / perpleCount //每个人应该付的钱
        
        return amoutPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                /**
                1.我们的文本输入框与currentMonery属性有双向绑定。
                2.checkAmount属性用@State标记，它自动监视值的更改。
                3.当@State属性更改时，SwiftUI将重新调用body属性（即，重新加载我们的UI）
                4.因此，文本视图将获得currentMonery的更新值。
                */
                Section {
                    //把文本框的值和currentMonery属性双向绑定 ,双向绑定之后会自动监听值的改变
                    TextField("Amount", text: $currentMonery)
                        .keyboardType(UIKeyboardType.decimalPad)
//                    $numberOfPeople  下标表示的值
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                //设置分区头的内容
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())//表示分段空控件
                }
                
                Section {
                    Text("$\(totolPerPerson)")
                }
            }.navigationBarTitle("WeSplit") //直接设置表单的标题
            //很多人认为应该将修饰符附加到NavigationView的末尾，但是需要将其附加到表单的末尾。
            //原因是导航视图能够在程序运行时显示许多视图，因此通过将标题附加到导航视图中的内容，我们允许iOS自由更改标题。
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
