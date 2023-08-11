//
//  MainListView.swift
//  meme
//
//  Created by t2023-m0063 on 2023/08/09.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                VStack(alignment: .leading) {
                    Text(memo.content)
                        .font(.body)
                        .lineLimit(1)
                    
                    Text(memo.insertDate, style: .date)
                        .font(.caption)
                        .foregroundColor(.secondary)
                
                }
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
        }
        
    }
}
struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}
