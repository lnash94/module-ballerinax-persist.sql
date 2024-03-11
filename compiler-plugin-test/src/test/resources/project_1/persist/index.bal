// Copyright (c) 2024 WSO2 LLC. (http://www.wso2.com) All Rights Reserved.
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/persist as _;
import ballerinax/persist.sql;

public type Person record {|
    readonly int id;
    string name;
    @sql:Index {names: ["address"]}
    Address address;
    @sql:Index {names: ["favs"]}
    string favColor;
    @sql:Index {names: ["favs"]}
    string favCar;
    @sql:Index {names: ["email", "email"]}
    string email;
    @sql:Index {names: ["gender_idx", " "]}
    string gender;
    @sql:Index {names: [""]}
    string nic;
    int numOfChildren;

|};

public type Address record {|
    readonly int id;
    string street;
    string city;
    string country;
    Person? user;
|};
