#include <iostream>

#define xstr(x) str(x)
#define str(x) #x

int main(){ 
  std::cout << "Successfully compiled and ran: " << xstr(CMAKE_PROJECT_NAME) << std::endl;
}
