//
//  MonthStruct.swift
//  Trackerly
//
//  Created by Yashaswi Bista on 6/29/23.
//
import Foundation
import SwiftUI
struct MonthStruct
{
  var monthType: MonthType
  var dayInt : Int
  func day() -> String
  {
    return String(dayInt)
  }
}
enum MonthType
{
  case Previous
  case Current
  case Next
}
