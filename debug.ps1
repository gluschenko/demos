
$name = "demos-legacy"
$port = "5306"

docker build --file src/Dockerfile -t ${name} .
docker run -d -p ${port}:80 --name ${name} -v ${PWD}/src:/usr/share/nginx/html ${name}

Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

docker rm ${name} --force
