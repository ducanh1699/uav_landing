#include <eigen3/Eigen/Dense>
#include <iostream>
#include <ros/ros.h>
#include "offboard_control/pid_controller_base.h"
using namespace std;
using namespace Eigen;

int main(int argc, char **argv){
    ros::init(argc, argv, "test_node");
    double kp =1.0, ki = 0, kd = 0;
    PidControllerBase a;
    a.setKp(kp);
    double b = a.getKp();
    cout << b << endl;
//     Matrix2f a;
//     a << 1, 2,
//          4, 5;
//     cout << a << endl;
//     return 0;
     // MatrixXd mat(2,2);
     // MatrixXd a(2,2);
     // a << 1, 2, 3, 4;
     // mat << 1, 2,
     //      3, 4;
     // Vector2d u(-1,1), v(2,0);
     // a = a*mat;
     // cout << a << endl;
     // std::cout << "Here is mat*mat:\n" << mat*mat << std::endl;
     // std::cout << "Here is mat*u:\n" << mat*u << std::endl;
     // std::cout << "Here is u^T*mat:\n" << u.transpose()*mat << std::endl;
     // std::cout << "Here is u^T*v:\n" << u.transpose()*v << std::endl;
     // std::cout << "Here is u*v^T:\n" << u*v.transpose() << std::endl;
     // std::cout << "Let's multiply mat by itself" << std::endl;
     // mat = mat*mat;
     // std::cout << "Now mat is mat:\n" << mat << std::endl;
     return 0;
}