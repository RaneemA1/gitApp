//
//  Tab_View.swift
//  ViewRaneem
//
//  Created by ٍٍRaneem A on 10/04/1445 AH.
//

import SwiftUI

    struct Tab_View: View {
        var body: some View {
            TabView{
                Home_View()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                Explore_View()
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                        Text("profile")
                    }
            }
        }
    }

    #Preview {
        Tab_View()
    }
