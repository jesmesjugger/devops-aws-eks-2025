#!/bin/bash
eksctl create cluster --name my-cluster --region us-east-1 --dry-run > cluster.yaml