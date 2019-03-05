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

- To add assertions to your scenarios review to this documentation [Pass/Fail](https://gettaurus.org/docs/PassFail/)

- For high level interpretation of results refer to `./output/bzt.log` after you test has finished
