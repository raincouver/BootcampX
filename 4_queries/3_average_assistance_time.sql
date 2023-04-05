-- SELECT AVG(durations."Duration") 
-- FROM (
--   SELECT assistance_requests.completed_at - assistance_requests.started_at as "Duration"
--   FROM assistance_requests
--   ) as durations;

  SELECT avg(completed_at - started_at) as average_assistance_request_duration
FROM assistance_requests;