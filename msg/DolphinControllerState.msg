# Header for timestamp
std_msgs/Header header
builtin_interfaces/Duration remaining_time

# Reference
float64 depth_reference

# Feedback
float64 depth_feedback
geometry_msgs/Quaternion orientation_feedback

# Error
float64 depth_error

# Output
float64 velocity_output
geometry_msgs/Quaternion orientation_output