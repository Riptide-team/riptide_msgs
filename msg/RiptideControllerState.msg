# Header for timestamp
std_msgs/Header header

# Reference
geometry_msgs/Twist reference

# Output
float64 thruster_joint
float64 d_joint
float64 p_joint
float64 s_joint

### If the controller is later in closed loop
# Feedback
# geometry_msgs/Twist feedback

# Error
# geometry_msgs/Twist error
