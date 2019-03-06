# Load and performance tests

[Blazemeter](https://www.blazemeter.com)

[Taurus](https://gettaurus.org) 


To write a suitable test we need to have a good understanding of the tool and the also the kind of traffic we need to test against.

## Prerequisite

To understand the kind of traffic your application needs to handle, refer to your APM tooling to understand your throughput

To understand the jargons used in Blazemeter, below are few useful links :-

- Please refer to this article to understand the relationship between users and throughput https://www.blazemeter.com/blog/what-relationship-between-users-and-hits-second

- Please refer to this article to understand the summary of your test report https://www.blazemeter.com/blog/understanding-your-reports-part-4-how-read-your-load-testing-reports-blazemeter



## Running tests

You will need a `BLAZEMETER_KEY_ID` + `BLAZEMETER_KEY_SECRET`

Run:
```BLAZEMETER_KEY_ID=<BLAZEMETER_KEY_ID> BLAZEMETER_KEY_SECRET=<BLAZEMETER_KEY_SECRET> sh ./run-test.sh```

## Interpreting the results

Blazemeter reports client side errors as well as server side errors. This can impact overall performance report. 

Blazemeter does not clearly log out the client side errors so it gets a bit difficult to guess whats going on underneath. 

When trying to test a specific feature it is advised that you think about requiring embedded resources or not.


## Considerations 

- If you your application is not publicly available you will need to whitelist the blazemeter addresses. 

- To test your application from multiple regions specify this in the executions json.



- For high level interpretation of results refer to `./output/bzt.log` after you test has finished


## Available Assertions
To add assertions to your scenarios review to this documentation [Pass/Fail](https://gettaurus.org/docs/PassFail/)

### Available subjects

- avg-rt - average response time, e.g. avg-rt>2s500ms
- avg-lt- average latency, e.g. avg-lt for mylabel>2
- avg-ct - average connect time, e.g. avg-ct>100ms
- stdev-rt - standard deviation for full response time, e.g. stdev-rt>0.5
- p... - percentile timing, e.g. p90>1s for 10s, p99.9>10s, stop as failed
- hits - number of responses, e.g. hits for my-label>100 for 5s, stop as non-failed
- succ or success - successful responses, supports percentage threshold, e.g. succ<100%
- fail or failures - failed responses, supports percentage threshold, e.g. failures>50% for 5s, stop as - failed
- rc... - response codes criteria, supports percentage threshold, response code may be specified using - wildcards ? and *, e.g. rc500>20 for 5s, stop as failed, rc4??>20%, rc*>=10 for 1m, rcException>99% for 1m, continue as failed,


## Reporting 

https://gettaurus.org/kb/Reporting/
