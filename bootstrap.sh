#!/bin/bash
set -e

echo "Розгортаємо StatefulSet MySQL..."
kubectl apply -f statefulset-mysql.yml

echo "Розгортаємо Deployment TodoApp..."
kubectl apply -f deployment-todoapp.yml

echo "Очікуємо готовності..."
kubectl rollout status statefulset/mysql
kubectl rollout status deployment/todoapp
