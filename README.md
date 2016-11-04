# AugurWorks Docker Environment
To run a full AW stack first login to AWS ECR with the following:
```bash
eval `aws ecr get-login [--profile=augurworks-profile-name]`
```

Then bring up the stack with the following:
```bash
docker-compose up -d
```

Elasticsearch may run into an issue with `vm.max_map_count` not being high enough. Run `sudo sysctl -w vm.max_map_count=262144` on your host machine to resolve and restart the Elasticsearch container.
