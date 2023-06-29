//
//  calendar.swift
//  Trackerly
//
//  Created by Yashaswi Bista on 6/29/23.
//


import SwiftUI
struct calendar: View
{
  @EnvironmentObject var dateHolder: DateHolder
  var body: some View
  {
    VStack(spacing: 1)
    {
      DateScrollerView()
        .environmentObject(dateHolder)
        .padding()
      dayOfWeekStack
      calendarGrid
    }
  }
  var dayOfWeekStack: some View
  {
    HStack(spacing: 1)
    {
      Text("Sun").dayOfWeek()
      Text("Mon").dayOfWeek()
      Text("Tue").dayOfWeek()
      Text("Wed").dayOfWeek()
      Text("Thu").dayOfWeek()
      Text("Fri").dayOfWeek()
      Text("Sat").dayOfWeek()
    }
  }
  var calendarGrid: some View
  {
    VStack(spacing: 1)
    {
      let daysInMonth = CalendarHelper().daysInMonth(dateHolder.date)
      let firstDayOfMonth = CalendarHelper().firstOfMonth(dateHolder.date)
      let startingSpaces = CalendarHelper().weekDay(firstDayOfMonth)
      let prevMonth = CalendarHelper().minusMonth(dateHolder.date)
      let daysInPrevMonth = CalendarHelper().daysInMonth(prevMonth)
      ForEach(0..<6)
      {
        row in
        HStack(spacing: 1)
        {
          ForEach(1..<8)
          {
            column in
            let count = column + (row * 7)
            CalendarCell(count: count, startingSpaces:startingSpaces, daysInMonth: daysInMonth, daysInPrevMonth: daysInPrevMonth)
              .environmentObject(dateHolder)
          }
        }
      }
    }
    .frame(maxHeight: 200)
  }
}
struct calendar_Previews: PreviewProvider {
  static var previews: some View {
    calendar()
  }
}
extension Text
{
  func dayOfWeek() -> some View
  {
    self.frame(maxWidth: 200)
      .padding(.top, 1)
      .lineLimit(1)
  }
}

//        NavigationStack{
//            Text("")
//                .toolbar{
//                    ToolbarItemGroup(placement: .status){
//                        NavigationLink(destination: ContentView()){
//                            Image("welcome")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100.0, height: 100.0)
//                        }
//                        NavigationLink(destination: home()){
//                            Image("home")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100.0, height: 100.0)
//                        }
//                        NavigationLink(destination: calendar())
//                        {
//                            Image("calendar")
//                                .resizable()
//                                .aspectRatio(contentMode: .fit)
//                                .frame(width: 100.0, height: 100.0)
//
//                        }
//                    }
//
//                }
//        }






