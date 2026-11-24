# Cámara de la GUI de Gazebo detrás del coche: el callback solo guarda la última pose; el bucle principal llama a /gui/move_to/pose a ~10 Hz
import math, sys, time
from gz.transport13 import Node
from gz.msgs10.pose_v_pb2 import Pose_V
from gz.msgs10.gui_camera_pb2 import GUICamera
from gz.msgs10.boolean_pb2 import Boolean
DIST, ALTO, CABEO = float(sys.argv[1]), float(sys.argv[2]), float(sys.argv[3])
n = Node(); ultima = [None]; yaw_f = None
def cb(mv):
    for q in mv.pose:
        if q.name == "f1": ultima[0] = q
n.subscribe(Pose_V, "/world/default/dynamic_pose/info", cb)
while True:
    time.sleep(0.08); m = ultima[0]
    if m is None: continue
    q = m.orientation; yaw = math.atan2(2 * (q.w * q.z + q.x * q.y), 1 - 2 * (q.y * q.y + q.z * q.z))
    yaw_f = yaw if yaw_f is None else yaw_f + 0.3 * math.atan2(math.sin(yaw - yaw_f), math.cos(yaw - yaw_f))
    y = yaw_f; p = m.position
    r = GUICamera(); r.name = "user_camera"
    r.pose.position.x = p.x - DIST * math.cos(y); r.pose.position.y = p.y - DIST * math.sin(y); r.pose.position.z = ALTO
    cy, sy, cp, sp = math.cos(y / 2), math.sin(y / 2), math.cos(CABEO / 2), math.sin(CABEO / 2)
    r.pose.orientation.w = cy * cp; r.pose.orientation.x = -sy * sp; r.pose.orientation.y = cy * sp; r.pose.orientation.z = sy * cp
    n.request("/gui/move_to/pose", r, GUICamera, Boolean, 200)
