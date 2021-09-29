# Test Automation on 'the-internet'

I practice writing automated tests with Selenium. In progress :smile:
- [ ] Add more Robot tests
- [ ] Write tests with Browser Library and compare execution time
- [ ] Create a CI pipeline

## Steps:
0. Prerequisites: Robot Framework, Selenium Library (and browser drivers), Docker

1. Clone or fork the repository

2. Pull and run the Docker image gprestes/the-internet:

```docker run -d -p 7080:5000 gprestes/the-internet```

3. Navigate to test folder and run tests:
```robot -d ..\results --variable URL:http://localhost:7080 --variable URL_NP:localhost:7080 --variable BROWSER:Firefox .```

OR add the variables to the variable file in the common folder.