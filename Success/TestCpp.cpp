//
//  TestCpp.cpp
//  Success
//
//  Created by Adish Betawar on 12/22/15.
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

#include "TestCpp.hpp"
TestCppClass::TestCppClass() {}
TestCppClass::TestCppClass(const string &title): m_title(title) {}
TestCppClass::~TestCppClass() {}
void TestCppClass::setTitle(const string &title)
{
    m_title = title;
}
const string &TestCppClass::getTtile()
{
    return m_title;
}