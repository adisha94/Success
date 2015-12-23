//
//  TestCpp.hpp
//  Success
//
//  Created by Adish Betawar on 12/22/15.
//  Copyright © 2015 Mega Saga Industries. All rights reserved.
//

#ifndef TestCpp_hpp
#define TestCpp_hpp

#include <stdio.h>
#include <string>
using namespace std;

class TestCppClass
{
public: // declare group of methods. ideally for method of the same name
    TestCppClass();
    TestCppClass(const string &title);
    ~TestCppClass();
    
public:
    void setTitle(const string &title);
    const string &getTtile();
    
private:
    string m_title;
};
#endif /* TestCpp_hpp */
