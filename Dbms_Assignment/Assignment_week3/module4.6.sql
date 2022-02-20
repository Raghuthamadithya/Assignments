SELECT
  ep.planNo,
  count(epl.planNo),
  sum(epl.numberFLD)
FROM EventPlan AS ep, EventPlanLine AS epl
WHERE ep.planNo = epl.planNo
GROUP BY ep.planNo;