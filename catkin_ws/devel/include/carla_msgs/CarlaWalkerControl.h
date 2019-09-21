// Generated by gencpp from file carla_msgs/CarlaWalkerControl.msg
// DO NOT EDIT!


#ifndef CARLA_MSGS_MESSAGE_CARLAWALKERCONTROL_H
#define CARLA_MSGS_MESSAGE_CARLAWALKERCONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>

namespace carla_msgs
{
template <class ContainerAllocator>
struct CarlaWalkerControl_
{
  typedef CarlaWalkerControl_<ContainerAllocator> Type;

  CarlaWalkerControl_()
    : direction()
    , speed(0.0)
    , jump(false)  {
    }
  CarlaWalkerControl_(const ContainerAllocator& _alloc)
    : direction(_alloc)
    , speed(0.0)
    , jump(false)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _direction_type;
  _direction_type direction;

   typedef float _speed_type;
  _speed_type speed;

   typedef uint8_t _jump_type;
  _jump_type jump;





  typedef boost::shared_ptr< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> const> ConstPtr;

}; // struct CarlaWalkerControl_

typedef ::carla_msgs::CarlaWalkerControl_<std::allocator<void> > CarlaWalkerControl;

typedef boost::shared_ptr< ::carla_msgs::CarlaWalkerControl > CarlaWalkerControlPtr;
typedef boost::shared_ptr< ::carla_msgs::CarlaWalkerControl const> CarlaWalkerControlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace carla_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'carla_msgs': ['/home/carla/carla-autoware/catkin_ws/src/ros-bridge/carla_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd3de0306de3de4e7161a29868c1f9a7";
  }

  static const char* value(const ::carla_msgs::CarlaWalkerControl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd3de0306de3de4eULL;
  static const uint64_t static_value2 = 0x7161a29868c1f9a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_msgs/CarlaWalkerControl";
  }

  static const char* value(const ::carla_msgs::CarlaWalkerControl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Copyright (c) 2019 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"# This represents a walker control message sent to CARLA simulator\n"
"\n"
"geometry_msgs/Vector3 direction\n"
"float32 speed\n"
"bool jump\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::carla_msgs::CarlaWalkerControl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.direction);
      stream.next(m.speed);
      stream.next(m.jump);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarlaWalkerControl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_msgs::CarlaWalkerControl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_msgs::CarlaWalkerControl_<ContainerAllocator>& v)
  {
    s << indent << "direction: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.direction);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "jump: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.jump);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_MSGS_MESSAGE_CARLAWALKERCONTROL_H
