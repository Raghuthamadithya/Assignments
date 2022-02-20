SELECT
  ereq.evntNo,
  ereq.dateHeld,
  ereq.dateReq,
  ereq.estCost,
  ereq.status
FROM EventRequest AS ereq
  INNER JOIN EventPlan AS ep ON ereq.evntNo = ep.evntNo
  INNER JOIN Employee AS emp ON ep.empNo = emp.empNo
  INNER JOIN Facility AS fac ON ereq.facNo = fac.facNo
WHERE (fac.facName = 'Basketball arena') AND (ereq.dateHeld BETWEEN '2013-10-01' AND '2013-12-31') AND
      (emp.empName = 'Mary Manager');