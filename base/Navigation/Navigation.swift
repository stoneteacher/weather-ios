//
//  base template generated by OpenBytes on 12/16/22.
//  Copyright (c) 2023 OpenBytes
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the conditions found at the following link:
//  https://github.com/0xOpenBytes/ios-BASE/blob/main/LICENSE
//
// Created by Leif.
//  Navigation.swift
//

import OpenBytesNavigation
import SwiftUI

public final class Navigation: ObservableObject {
    static var shared: Navigation = Navigation()

    var home: OpenBytesNavigationPath = OpenBytesNavigationPath.load(id: "home")
    var search: OpenBytesNavigationPath = OpenBytesNavigationPath.load(id: "search")
    var profile: OpenBytesNavigationPath = OpenBytesNavigationPath.load(id: "profile")

    @Published var tab: RootView.Tab = .home

    static var path: OpenBytesNavigationPath {
        Navigation.shared.use { navigation in
            switch navigation.tab {
            case .home:     return navigation.home
            case .search:   return navigation.search
            case .profile:  return navigation.profile
            }
        }
    }

    private init() { }
}

extension Navigation: Usable { }
