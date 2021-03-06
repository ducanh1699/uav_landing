# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sim_uav/target_local_posRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import mavros_msgs.msg
import std_msgs.msg

class target_local_posRequest(genpy.Message):
  _md5sum = "15f5dcd919b6e4125a7db7e897fa0533"
  _type = "sim_uav/target_local_posRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """mavros_msgs/PositionTarget goal_pos

================================================================================
MSG: mavros_msgs/PositionTarget
# Message for SET_POSITION_TARGET_LOCAL_NED
#
# Some complex system requires all feautures that mavlink
# message provide. See issue #402.

std_msgs/Header header

uint8 coordinate_frame
uint8 FRAME_LOCAL_NED = 1
uint8 FRAME_LOCAL_OFFSET_NED = 7
uint8 FRAME_BODY_NED = 8
uint8 FRAME_BODY_OFFSET_NED = 9

uint16 type_mask
uint16 IGNORE_PX = 1	# Position ignore flags
uint16 IGNORE_PY = 2
uint16 IGNORE_PZ = 4
uint16 IGNORE_VX = 8	# Velocity vector ignore flags
uint16 IGNORE_VY = 16
uint16 IGNORE_VZ = 32
uint16 IGNORE_AFX = 64	# Acceleration/Force vector ignore flags
uint16 IGNORE_AFY = 128
uint16 IGNORE_AFZ = 256
uint16 FORCE = 512	# Force in af vector flag
uint16 IGNORE_YAW = 1024
uint16 IGNORE_YAW_RATE = 2048

geometry_msgs/Point position
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration_or_force
float32 yaw
float32 yaw_rate

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['goal_pos']
  _slot_types = ['mavros_msgs/PositionTarget']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       goal_pos

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(target_local_posRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.goal_pos is None:
        self.goal_pos = mavros_msgs.msg.PositionTarget()
    else:
      self.goal_pos = mavros_msgs.msg.PositionTarget()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.goal_pos.header.seq, _x.goal_pos.header.stamp.secs, _x.goal_pos.header.stamp.nsecs))
      _x = self.goal_pos.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BH9d2f().pack(_x.goal_pos.coordinate_frame, _x.goal_pos.type_mask, _x.goal_pos.position.x, _x.goal_pos.position.y, _x.goal_pos.position.z, _x.goal_pos.velocity.x, _x.goal_pos.velocity.y, _x.goal_pos.velocity.z, _x.goal_pos.acceleration_or_force.x, _x.goal_pos.acceleration_or_force.y, _x.goal_pos.acceleration_or_force.z, _x.goal_pos.yaw, _x.goal_pos.yaw_rate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal_pos is None:
        self.goal_pos = mavros_msgs.msg.PositionTarget()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.goal_pos.header.seq, _x.goal_pos.header.stamp.secs, _x.goal_pos.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal_pos.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal_pos.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 83
      (_x.goal_pos.coordinate_frame, _x.goal_pos.type_mask, _x.goal_pos.position.x, _x.goal_pos.position.y, _x.goal_pos.position.z, _x.goal_pos.velocity.x, _x.goal_pos.velocity.y, _x.goal_pos.velocity.z, _x.goal_pos.acceleration_or_force.x, _x.goal_pos.acceleration_or_force.y, _x.goal_pos.acceleration_or_force.z, _x.goal_pos.yaw, _x.goal_pos.yaw_rate,) = _get_struct_BH9d2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.goal_pos.header.seq, _x.goal_pos.header.stamp.secs, _x.goal_pos.header.stamp.nsecs))
      _x = self.goal_pos.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_BH9d2f().pack(_x.goal_pos.coordinate_frame, _x.goal_pos.type_mask, _x.goal_pos.position.x, _x.goal_pos.position.y, _x.goal_pos.position.z, _x.goal_pos.velocity.x, _x.goal_pos.velocity.y, _x.goal_pos.velocity.z, _x.goal_pos.acceleration_or_force.x, _x.goal_pos.acceleration_or_force.y, _x.goal_pos.acceleration_or_force.z, _x.goal_pos.yaw, _x.goal_pos.yaw_rate))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal_pos is None:
        self.goal_pos = mavros_msgs.msg.PositionTarget()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.goal_pos.header.seq, _x.goal_pos.header.stamp.secs, _x.goal_pos.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal_pos.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal_pos.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 83
      (_x.goal_pos.coordinate_frame, _x.goal_pos.type_mask, _x.goal_pos.position.x, _x.goal_pos.position.y, _x.goal_pos.position.z, _x.goal_pos.velocity.x, _x.goal_pos.velocity.y, _x.goal_pos.velocity.z, _x.goal_pos.acceleration_or_force.x, _x.goal_pos.acceleration_or_force.y, _x.goal_pos.acceleration_or_force.z, _x.goal_pos.yaw, _x.goal_pos.yaw_rate,) = _get_struct_BH9d2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_BH9d2f = None
def _get_struct_BH9d2f():
    global _struct_BH9d2f
    if _struct_BH9d2f is None:
        _struct_BH9d2f = struct.Struct("<BH9d2f")
    return _struct_BH9d2f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sim_uav/target_local_posResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class target_local_posResponse(genpy.Message):
  _md5sum = "3f4fece6412db25720b2bab9f80b3473"
  _type = "sim_uav/target_local_posResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 dist
"""
  __slots__ = ['dist']
  _slot_types = ['float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       dist

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(target_local_posResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.dist is None:
        self.dist = 0.
    else:
      self.dist = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.dist
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 8
      (self.dist,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.dist
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 8
      (self.dist,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
class target_local_pos(object):
  _type          = 'sim_uav/target_local_pos'
  _md5sum = 'fb2d2cec436c25bb2c92caf8218fe6ff'
  _request_class  = target_local_posRequest
  _response_class = target_local_posResponse
