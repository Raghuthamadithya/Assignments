SELECT
  ereq.evntNo,
  ereq.dateHeld,
  count(*) AS evntPlanCount
FROM EventRequest AS ereq
  INNER JOIN EventPlan AS ep ON ereq.evntNo = ep.evntNo
WHERE ep.workDate BETWEEN '2013-12-01' AND '2013-12-31'
GROUP BY ereq.evntNo
HAVING evntPlanCount > 1;