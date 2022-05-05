# Create memberships for the distinct set of all team members who aren't admins.

locals {
  non_admin_members = setsubtract(
    setunion(
      local.acceleration_wg_team,
      local.ackermann_msgs_team,
      local.apex_team,
      local.apriltag_team,
      local.astuff_team,
      local.async_web_server_cpp_team,
      local.autoware_team,
      local.aws_team,
      local.behaviortree_team,
      local.bno055_team,
      local.connextdds_team,
      local.control_box_rst_team,
      local.control_team,
      local.cyberbotics_team,
      local.cyclonedds_team,
      local.diagnostics_team,
      local.dolly_team,
      local.fastcdr_team,
      local.fmi_team,
      local.fogros2_team,
      local.four_wheel_steering_msgs_team,
      local.foxglove_msgs_team,
      local.gazebo_team,
      local.geographic_info_team,
      local.grbl_team,
      local.gscam_team,
      local.gurumdds_team,
      local.iceoryx_team,
      local.ifm3d_team,
      local.ijnek_team,
      local.imu_tools_team,
      local.irobot_education_team,
      local.lanelet2_team,
      local.lgsvl_team,
      local.libg2o_team,
      local.locator_ros_bridge_team,
      local.mavlink_team,
      local.micro_ros_diagnostics_team,
      local.micro_ros_msgs_team,
      local.microstrain_team,
      local.moveit_team,
      local.mrpt2_team,
      local.mrt_cmake_modules_team,
      local.navigation_team,
      local.neobotix_team,
      local.nmea_team,
      local.nobleo_team,
      local.nodl_team,
      local.ntpd_driver_team,
      local.object_analytics_team,
      local.octomap_team,
      local.ompl_team,
      local.ouster_drivers_team,
      local.ouxt_team,
      local.pal_robotics_team,
      local.perception_team,
      local.phidgets_team,
      local.picknik_team,
      local.plotjuggler_team,
      local.rclc_team,
      local.rcpputils_team,
      local.realsense_team,
      local.rmf_team,
      local.roboception_team,
      local.robot_localization_team,
      local.robotis_team,
      local.robotwebtools_team,
      local.ros_canopen_team,
      local.ros_team,
      local.rosauth_team,
      local.rosbag2_team,
      local.rospy_message_converter_team,
      local.rplidar_ros_team,
      local.rqt_team,
      local.rtabmap_team,
      local.ruckig_team,
      local.security_wg_team,
      local.simple_launch_team,
      local.slider_publisher_team,
      local.smacc2_team,
      local.sports_team,
      local.swri_team,
      local.system_modes_team,
      local.tf_transformations_team,
      local.tier4_team,
      local.tooling_wg_team,
      local.tracing_team,
      local.transport_drivers_team,
      local.turtlebot4_team,
      local.twist_mux_team,
      local.ublox_team,
      local.udp_msgs_team,
      local.universal_robots_team,
      local.urdf_tutorial_team,
      local.urg_team,
      local.usb_cam_team,
      local.v4l2_camera_team,
      local.velodyne_simulator_team,
      local.velodyne_team,
      local.vision_msgs_team,
      local.visp_team,
      local.xacro_team,
      local.zbar_ros_team,
      local.zenoh_bridge_dds_team,
    ),
    local.ros_admins
  )
}

resource "github_membership" "members" {
  for_each = local.non_admin_members

  username = each.value
  role     = "member"
}

