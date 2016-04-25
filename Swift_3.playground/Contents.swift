//: Playground - noun: a place where people can play

import UIKit

//1.某小组各成员在某次测试中所获得的成绩：[85,88,90,80,88,96,55,43,77] 求:平均成绩。
//2.指定一个元组，用于表示三维坐标（x,y,z），写一个switch语句打印这个点的卦限。

//homework1

//第一种方式
let scores = [85,88,90,80,88,96,55,43,77]

var sum : Float = 0.0
for number in scores {
    sum += Float(number)
}
let average = sum / Float(scores.count)
print("第一种方式 = \(average)")

//第二种方式
let sum1 = scores.reduce(0, combine: +)
let average1 = Float(sum1 ) / Float(scores.count)
print("第二种方式 = \(average1)")

//homework2
let ordinate = (x: -10, y: -10, z: -10)
var tmpStr = ""
tmpStr += (ordinate.x > 0 ? "+" : "-")
tmpStr += (ordinate.y > 0 ? "+" : "-")
tmpStr += (ordinate.z > 0 ? "+" : "-")

switch (tmpStr) {
case "+++":
    print("第 一 卦限")
case "-++":
    print("第 二 卦限")
case "--+":
    print("第 三 卦限")
case "+-+":
    print("第 四 卦限")
case "++-":
    print("第 五 卦限")
case "-+-":
    print("第 六 卦限")
case "---":
    print("第 七 卦限")
case "+--":
    print("第 八 卦限")
default:
    print("原点")
}

