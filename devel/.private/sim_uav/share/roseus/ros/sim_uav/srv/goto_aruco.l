;; Auto-generated. Do not edit!


(when (boundp 'sim_uav::goto_aruco)
  (if (not (find-package "SIM_UAV"))
    (make-package "SIM_UAV"))
  (shadow 'goto_aruco (find-package "SIM_UAV")))
(unless (find-package "SIM_UAV::GOTO_ARUCO")
  (make-package "SIM_UAV::GOTO_ARUCO"))
(unless (find-package "SIM_UAV::GOTO_ARUCOREQUEST")
  (make-package "SIM_UAV::GOTO_ARUCOREQUEST"))
(unless (find-package "SIM_UAV::GOTO_ARUCORESPONSE")
  (make-package "SIM_UAV::GOTO_ARUCORESPONSE"))

(in-package "ROS")





(defclass sim_uav::goto_arucoRequest
  :super ros::object
  :slots (_timeOut ))

(defmethod sim_uav::goto_arucoRequest
  (:init
   (&key
    ((:timeOut __timeOut) 0.0)
    )
   (send-super :init)
   (setq _timeOut (float __timeOut))
   self)
  (:timeOut
   (&optional __timeOut)
   (if __timeOut (setq _timeOut __timeOut)) _timeOut)
  (:serialization-length
   ()
   (+
    ;; float64 _timeOut
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timeOut
       (sys::poke _timeOut (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timeOut
     (setq _timeOut (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sim_uav::goto_arucoResponse
  :super ros::object
  :slots (_dist ))

(defmethod sim_uav::goto_arucoResponse
  (:init
   (&key
    ((:dist __dist) 0.0)
    )
   (send-super :init)
   (setq _dist (float __dist))
   self)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:serialization-length
   ()
   (+
    ;; float64 _dist
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _dist
     (setq _dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass sim_uav::goto_aruco
  :super ros::object
  :slots ())

(setf (get sim_uav::goto_aruco :md5sum-) "02fd582894f05f0c4b5cc3fc3ea23d3d")
(setf (get sim_uav::goto_aruco :datatype-) "sim_uav/goto_aruco")
(setf (get sim_uav::goto_aruco :request) sim_uav::goto_arucoRequest)
(setf (get sim_uav::goto_aruco :response) sim_uav::goto_arucoResponse)

(defmethod sim_uav::goto_arucoRequest
  (:response () (instance sim_uav::goto_arucoResponse :init)))

(setf (get sim_uav::goto_arucoRequest :md5sum-) "02fd582894f05f0c4b5cc3fc3ea23d3d")
(setf (get sim_uav::goto_arucoRequest :datatype-) "sim_uav/goto_arucoRequest")
(setf (get sim_uav::goto_arucoRequest :definition-)
      "float64 timeOut
---
float64 dist
")

(setf (get sim_uav::goto_arucoResponse :md5sum-) "02fd582894f05f0c4b5cc3fc3ea23d3d")
(setf (get sim_uav::goto_arucoResponse :datatype-) "sim_uav/goto_arucoResponse")
(setf (get sim_uav::goto_arucoResponse :definition-)
      "float64 timeOut
---
float64 dist
")



(provide :sim_uav/goto_aruco "02fd582894f05f0c4b5cc3fc3ea23d3d")


