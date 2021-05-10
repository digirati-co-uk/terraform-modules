# Change log

## v1.0 - ??

Terraform 0.11

## v2.0 - ??

Terraform 0.12

## v2.1 2020-09-24

Update `aws_alb_listener_rule` resources to use new `condition` syntax as this moved from warning to error.

```hcl
# from..
condition {
  field  = "host-header"
  values = ["my-hostname"]
}

# to..
condition {
  host_header {
    values = ["my-hostname"]
  }
}
```

## 2.2 2020-11-03

Update typo in `port_mappings` for services/tasks/quartet

## 2.3 2021-05-10

Introduce `ecs/container_definition` and `ecs/task_definition` modules. These will allow more granular control over container and task than is currently in `/services/tasks`.