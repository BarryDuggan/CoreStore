//
//  MigrationResult.swift
//  CoreStore
//
//  Copyright © 2018 John Rommel Estropia
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation


// MARK: - MigrationResult

/**
 The `MigrationResult` indicates the result of a migration.
 `MigrationResult.success` indicates either the migration succeeded, or there were no migrations needed. The associated value is an array of `MigrationType`s reflecting the migration steps completed.
 `MigrationResult.failure` indicates that the migration failed. The associated object for this value is the a `CoreStoreError` enum value.
 ```
 CoreStore.upgradeStorageIfNeeded(SQLiteStorage(fileName: "data.sqlite")) { (result) in
     switch result {
     case .success(let migrationSteps):
         // ...
     case .failure(let error):
         // ...
     }
 }
 ```
 */
public typealias MigrationResult = Swift.Result<[MigrationType], CoreStoreError>
