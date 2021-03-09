;; Auto-generated. Do not edit!


(when (boundp 'sim_uav::land_aruco)
  (if (not (find-package "SIM_UAV"))
    (make-package "SIM_UAV"))
  (shadow 'land_aruco (find-package "SIM_UAV")))
(unless (find-package "SIM_UAV::LAND_ARUCO")
  (make-package "SIM_UAV::LAND_ARUCO"))
(unless (find-package "SIM_UAV::LAND_ARUCOREQUEST")
  (make-package "SIM_UAV::LAND_ARUCOREQUEST"))
(unless (find-package "SIM_UAV::LAND_ARUCORESPONSE")
  (make-package "SIM_UAV::LAND_ARUCORESPONSE"))

(in-package "ROS")





(defclass sim_uav::land_arucoRequest
  :super ros::object
  :slots (_timeOut ))

(defmethod sim_uav::land_arucoRequest
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

(defclass sim_uav::land_arucoResponse
  :super ros::object
  :slots (_dist ))

(defmethod sim_uav::land_arucoResponse
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

(defclass sim_uav::land_aruco
  :super ros::object
  :slots ())

(setf (get sim_uav::land_aruco :md5sum-) "02fd582894f05f0c4b5cc3fc3ea23d3d")
(setf (get sim_uav::land_aruco :datatype-) "sim_uav/land_aruco")
(setf (get sim_uav::land_aruco :request) sim_uav::land_arucoRequest)
(setf (get sim_uav::land_aruco :response) sim_uav::land_arucoResponse)

(defmethod sim_uav::land_arucoRequest
  (:response () (instance sim_uav::land_arucoResponse :init)))

(setf (get sim_uav::land_arucoRequest :md5sum-) "02fd582894f05f0c4b5cc3fc3ea23d3d")
(setf (get sim_uav::land_arucoRequest :datatype-) "sim_uav/land_arucoRequest")
(setf (get sim_uav::land_arucoRequest :definition-)
      "float64 timeOut
---
float64 dist
")

(setf (get sim_uav::land_arucoResponse :md5sum-) "02fd582894f05f0c4b5cc3fc3ea23d3d")
(setf (get sim_uav::land_arucoResponse :datatype-) "sim_uav/land_arucoResponse")
(setf (get sim_uav::land_arucoResponse :definition-)
      "float64 timeOut
---
float64 dist
")



(provide :sim_uav/land_aruco "02fd582894f05f0c4b5cc3fc3ea23d3d")


