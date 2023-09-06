#include <gtest/gtest.h>

#include "main.h"

TEST(MainTest, Get27) { 
	EXPECT_EQ(27, main_core::Get27());
}