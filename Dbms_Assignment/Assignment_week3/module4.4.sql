SELECT
  evntNo,
  dateAuth,
  status
FROM EventRequest 
WHERE (status = 'Approved' OR status = 'Denied') AND dateAuth BETWEEN '2013-07-01' AND '2013-07-31';