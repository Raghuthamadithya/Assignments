SELECT
  loc.locNo,
  loc.locName
FROM Location AS loc, Facility AS fac
WHERE loc.facNo = fac.facNo AND fac.facName = 'Basketball arena';