# 6-05 idem a 6-03 pero S2i y con name la ruta

1) Create a S2I of php code from https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps  with php 7.3, branch main, dir php-helloworld, name do180-p5
 
oc new-project do180-p5  
oc new-app --as-deployment-config  php:7.3~https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps --context-dir php-helloworld --name do180-p5  

2) Wait until build finish  
oc logs bc/do180-p5 -f  
oc get pods -w  

3) Expose route and test  
oc get svc  
oc expose svc/do180-p5  
oc get routes  
oc describe route  
curl "route"  
oc expose svc/do180-p5 --name=custom-route  


