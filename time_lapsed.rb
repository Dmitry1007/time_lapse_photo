duration = 60           # 4 * 60 * 60 Time to run, in seconds (4 hours here)
interval = 15           # 5 * 60     time between each photo, in seconds (5 minutes here)
 
end_at = Time.now + duration
 
while Time.now <= end_at do
 `imagesnap ~/time_lapse_images/'#{Time.now}'.jpg`
 sleep interval
end