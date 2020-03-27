# Logstash Cookbook

This cookbook provisions our Logstash instance. Logstash is a tool for managing events and logs. For our project, Logstash receives logs and metric data from our app and database instances. We can then apply filters to the data that is sent to Logstash and then forward this on to Elasticsearch.

## Unit tests

To run the unit tests for the cookbook, run the command:

```
chef exec rspec spec
```

## Integration tests

To run the integration tests, run the command:

```
kitchen test
```

![logstash](https://logodix.com/logo/2035917.png)

test