
  
SELECT
  ep.planNo,
  ep.evntNo,
  ep.workDate,
  ep.activity
FROM EventPlan AS ep
  INNER JOIN EventRequest AS ereq ON ep.evntNo = ereq.evntNo
  INNER JOIN Facility AS fac ON ereq.facNo = fac.facNo
WHERE (fac.facName = 'Basketball arena') AND (ep.workDate BETWEEN '2013-12-01' AND '2013-12-31');