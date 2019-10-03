arr=($(ls -d */))

for i in ${arr[@]}
do
   if [ "$i" = "germany/" ] || [ "$i" == "japan/" ] || [ "$i" == "south_korea/" ] || [ "$i" == "the_netherlands/" ] || [ "$i" == "united_kingdom/" ]
   then
        cd $i;npm run build;cd ..;
   fi
done
