//
//  ReportBoardView.swift
//  kko_okk
//
//  Created by Yeni Hwang on 2022/06/02.
//

import SwiftUI

struct ReportBoardView: View {
    @FetchRequest(sortDescriptors: [], animation: .default)
    private var fetchRequest: FetchedResults<Promise>

    var body: some View {
        ZStack{
            Color(hex:"#F5F7F9")
//            GeometryReader { geometry in
//                VStack{
//                    Spacer(minLength: 20)
//                    HStack{
//                        VStack{
//                            HStack{
//                                DailyReportView()
//                                    .cornerRadius(HeaderViewConst.shared.cornerRadius)
//                                    .shadow(color: Color(hex: "#D9D9D9"), radius: 5, x: 3, y: 3)
//
//                                Spacer(minLength: 20)
//                                checkPromiseView()
//                                    .cornerRadius(HeaderViewConst.shared.cornerRadius)
//                                    .shadow(color: Color(hex: "#D9D9D9"), radius: 5, x: 3, y: 3)
//                            }
//                            Spacer(minLength: 20)
//                            WeeklyReportView()
//                                .background(Color.white)
//                                .cornerRadius(HeaderViewConst.shared.cornerRadius)
//                                .frame(height: geometry.size.height * 0.54)
//                                .shadow(color: Color(hex: "#D9D9D9"), radius: 5, x: 3, y: 3)
//                        }
//                        Spacer(minLength: 30)
//                        MonthlyReportView()
//                            .background(Color.white)
//                            .cornerRadius(HeaderViewConst.shared.cornerRadius)
//                            .frame(width: geometry.size.width * 0.329)
//                            .shadow(color: Color(hex: "#D9D9D9"), radius: 5, x: 3, y: 3)
//                    }
//                    Spacer(minLength: 20)
//                }
//            }
            VStack {
                ForEach (fetchRequest) { item in
                    Text(item.name ?? "빈 제목")
                }
                
            }
        }
    }
    
    init(startDate: Date) {
        _fetchRequest = FetchRequest<Promise>(sortDescriptors: [],
                                              predicate: NSPredicate(format: "%@ <= madeTime AND madeTime <= %@",
                                                                     Calendar.current.startOfDay(for: startDate).startOftheMonth(now: startDate) as NSDate,
                                                                     Calendar.current.startOfDay(for: startDate).endOftheMonth(now: startDate) as NSDate),
                                
                                              animation: .default)
        
        print(startDate)
        print(Calendar.current.startOfDay(for: startDate).startOftheMonth(now: startDate))
        print(Calendar.current.startOfDay(for: startDate).endOftheMonth(now: startDate))
    }
    
    func makeDailyData() -> [DailyReportData] {
        var result: [DailyReportData] = []
        
        return result
    }
}
