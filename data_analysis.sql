--- Analysis queries

--- Total amount of claims per policy type
select pt.policytypename, count(c.claimid) as TotalClaims
from claims c
join policies p on c.policyid = p.policyid
join policytypes pt on p.policytypeid = pt.policytypeid
group by pt.policytypename
order by TotalClaims desc

--- Monthly claim frequency and average claim amount
select date_trunc('month', claimdate) as ClaimMonth, count(*) as ClaimFrequency, round(avg(claimamount),2) as AverageClaimAmount
from claims
group by ClaimMonth
order by ClaimMonth
