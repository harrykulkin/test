script_dir=$(dirname $0)
echo "Let me check out one of KWEB service."

read -p "Please, enter SVN Username : " svn_name
read -p "Please, enter KWEB service (project) name : " service_name

svn co svn://10.0.159.22:443/kweb/$service_name $script_dir/$service_name --username $svn_name
mvn clean -f $script_dir/$service_name/pom.xml
mvn package -f $script_dir/$service_name/pom.xml

if [ "$service_name" = "resource" ];
then
    npm --prefix $script_dir/resource/webpack_src install  
fi