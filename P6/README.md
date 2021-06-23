## P6 (hasta 6.7)

1) Enter your local clone DO180-apps, and create new branch called s2i  
git login -u mascolo99 github.com  
git branch  
git checkout -b s2i  
git push -u origin s2i  

2) Create new app s2i php v 7.3 name do180-p6, branch s2i dir php-helloworld  
oc new-app --as-deployment-config php:7.3 --name=do180-p6 https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps#s2i  --context-dir php-helloworld  

3) Check build and deploy  

4) Expose service  

5) Curl de route  

6) Change index.php and commit the changes to git  
echo "A Change from mosco!!" >> DO180-apps/php-helloworld/index.php  
git add *  
git commit -m "first change"  
git push  

7) Rebuild   
oc start-build do180-p6  
oc logs bc/do180-p6 -f  
oc logs php-helloworld-2-build -f  
oc  get pods -w  

8) Curl the same route again  
curl  

# P6.9
Crear un branch llamado console2  
Crear un app por la consola web, proyecto do180-p69 y nombre tb, nombre de app php-helloworld, branch console2, dir php-helloworld, tu git, php 7.3  
Luego agregar una linea de print al codigo php y tocar start build y verificar que ahora la ruta devuelva otra cosa en el print  


 
