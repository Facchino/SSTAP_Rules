#! /bin/bash
echo "=CHNRoute,仅国内直连,1,1,1,0,0,2," > CHNRoute.rules
curl -s http://www.ipdeny.com/ipblocks/data/aggregated/cn-aggregated.zone >> CHNRoute.rules
git add CHNRoute.rules
git commit -m "CHNRoute.rules auto update. `date +"%Y-%m-%d"`"
git push
