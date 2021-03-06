//
//  JavaTestMethods.cpp
//
//  Created by mengxk on 19/03/16.
//  Copyright © 2016 mengxk. All rights reserved.
//

#include "JavaTestMethods.hpp"
#include <android/log.h>

/***********************************************/
/***** static variables initialize *************/
/***********************************************/


/***********************************************/
/***** static function implement ***************/
/***********************************************/
void JavaTestMethods::crossNativeStaticMethod()
{
    __android_log_print(ANDROID_LOG_INFO, "crosspl", "%s", __PRETTY_FUNCTION__);
}


/***********************************************/
/***** class public function implement  ********/
/***********************************************/
void JavaTestMethods::crossNativeMethod()
{
    __android_log_print(ANDROID_LOG_INFO, "crosspl", "%s", __PRETTY_FUNCTION__);
}


/***********************************************/
/***** class protected function implement  *****/
/***********************************************/


/***********************************************/
/***** class private function implement  *******/
/***********************************************/

