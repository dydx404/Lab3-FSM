Task 0 sets up Google Test (GTest) to verify simple C++ functions. After installing GTest, a small example is provided in main.cpp. The code defines int add(int a, int b){return a+b;} and a test class TestAdd inheriting from ::testing::Test. Two tests use the TEST_F macro:
TEST_F(TestAdd, AddTest){EXPECT_EQ(add(2,4),6);} and
TEST_F(TestAdd, AddTest2){EXPECT_EQ(add(1,-1),0);}.
Finally, main() initializes and runs all tests with RUN_ALL_TESTS();. This verifies your setup and shows how automated unit testing works in the lab environment.