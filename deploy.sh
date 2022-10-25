docker build -t jparkkennaby/complex-client -f ./client/Dockerfile ./client
docker build -t jparkkennaby/complex-server -f ./server/Dockerfile ./server
docker build -t jparkkennaby/complex-worker -f ./worker/Dockerfile ./worker

docker push jparkkennaby/complex-client
docker push jparkkennaby/complex-server
docker push jparkkennaby/complex-worker

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=jparkkennaby/complex-server