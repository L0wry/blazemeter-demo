# Load and performance tests

[Blazemeter](https://www.blazemeter.com)

[Taurus](https://gettaurus.org) 


To write a suitable test we need to have a good understanding of the tool and the also the kind of traffic we need to test against.

## Prerequisite

To understand the kind of traffic your application needs to handle, refer to your APM tooling to understand your throughput

To understand the jargons used in Blazemeter, below are few useful links :-

- Please refer to this article to understand the relationship between users and throughput https://www.blazemeter.com/blog/what-relationship-between-users-and-hits-second

- Please refer to this article to understand the summary of your test report https://www.blazemeter.com/blog/understanding-your-reports-part-4-how-read-your-load-testing-reports-blazemeter

Blazemeter reports client side errors as well in addition to the server side backend errors, and that impacts the overall performance report. It does not clearly log about the client side errors so it gets a bit difficult to guess whats going on underneath. Therefore when trying to test a specific feature we need to understand if we to download the embedded resources or not.

## Running tests

You will need a `BLAZEMETER_KEY_ID` + `BLAZEMETER_KEY_SECRET`

Run:
```BLAZEMETER_KEY_ID=<BLAZEMETER_KEY_ID> BLAZEMETER_KEY_SECRET=<BLAZEMETER_KEY_SECRET> sh ./run-test.sh```
