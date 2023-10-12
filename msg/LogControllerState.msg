# Header for timestamp
std_msgs/Header header

# Reference
geometry_msgs/Quaternion reference

# Feedback
geometry_msgs/Quaternion feedback

# Error
geometry_msgs/Quaternion error
float64 angular_error

# Output
float64 velocity
geometry_msgs/Vector3 output

# Corrector
geometry_msgs/Vector3 kp
geometry_msgs/Vector3 kp_error
geometry_msgs/Vector3 kd
geometry_msgs/Vector3 kd_error