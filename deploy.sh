docker build -t jparkkennaby/complex-client:latest -t jparkkennaby/complex-client:$SHA -f ./client/Dockerfile ./client
docker build -t jparkkennaby/complex-server:latest -t jparkkennaby/complex-server:$SHA -f ./server/Dockerfile ./server
docker build -t jparkkennaby/complex-worker:latest -t jparkkennaby/complex-worker:$SHA -f ./worker/Dockerfile ./worker

docker push jparkkennaby/complex-client:latest
docker push jparkkennaby/complex-server:latest
docker push jparkkennaby/complex-worker:latest

docker push jparkkennaby/complex-client:$SHA
docker push jparkkennaby/complex-server:$SHA
docker push jparkkennaby/complex-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=jparkkennaby/complex-server:$SHA
kubectl set image deployments/client-deployment client=jparkkennaby/complex-client:$SHA
kubectl set image deployments/worker-deployment worker=jparkkennaby/complex-worker:$SHA