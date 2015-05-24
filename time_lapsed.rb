# path = "~/time_lapse_images"     # directory where images will be stored. must exist and be writable.
 
duration = 60           # 4 * 60 * 60 Time to run, in seconds (4 hours here)
interval = 15           # 5 * 60     time between each photo, in seconds (5 minutes here)
 
end_at = Time.now + duration
 
i = 0
while Time.now <= end_at do
 i += 1
 `imagesnap ~/time_lapse_images/'#{i}'.jpg`          # "../ImageSnap// #{path}/%05d.jpg" % i
 sleep interval
end