# AugurWorks Docker Environment
To run a full AW stack first login to AWS ECR with the following:
```bash
eval `aws ecr get-login [--profile=augurworks-profile-name]`
```

Then bring up the stack with the following:
```bash
docker-compose up -d
```
