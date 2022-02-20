SELECT
  epl.planNo,
  epl.lineNo,
  epl.numberFLD AS 'Number',
  epl.timeStart,
  epl.timeEnd,
  loc.locName     AS 'Location name',
  rtbl.resName     AS 'Resource name'
FROM EventPlanLine AS epl
  INNER JOIN EventPlan AS ep ON epl.planNo = ep.planNo
  INNER JOIN Location AS loc ON epl.locNo = loc.locNo
  INNER JOIN ResourceTbl AS rtbl ON epl.resNo = rtbl.resNo
  INNER JOIN Facility AS fac ON loc.facNo = fac.facNo
WHERE (fac.facName = 'Basketball arena') AND (ep.activity = 'Operation') AND
      (ep.workDate BETWEEN '2013-10-01' AND '2013-12-31')
ORDER BY epl.planNo;