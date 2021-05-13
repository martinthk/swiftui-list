//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Martin Tom on 29/4/2021.
//


import SwiftUI

// 1. Build List View (put cells into list)
// 2. Create Detail View
// 3. Connect with NavigationView


struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView{
            List(videos, id: \.id){ video in
                Image(video.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(4)
                    .padding(.vertical, 8)
                
                VStack(alignment: .leading, spacing: 5){
                    Text(video.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    
                    Text(video.uploadDate)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Sean's Top 10")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}



