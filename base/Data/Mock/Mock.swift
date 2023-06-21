//
//  base template generated by OpenBytes on 12/17/22.
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
// Created by Rob Maltese.
//  Mock.swift
//

import Disk
import Foundation

enum Mock {
    static func json<Value: Codable>(
        named: String,
        type: Value.Type = Value.self,
        using decoder: JSONDecoder = JSONDecoder()
    ) -> Value? {
        try? Disk.json(
            named: named,
            type: type,
            using: decoder
        )
    }
}