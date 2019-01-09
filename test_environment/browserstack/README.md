## Run

```bash
$ robot --outputdir reports main.robot
```

## You should know

### BrowserStack only supports real mobile devices (as of 2019/01/09)

BrowserStack only supports real devices. I got an error following message when run with `real_mobile: false`. I cannot find a document about it. I would appreciate if you could tell me the link.

> WebDriverException: Message: We're sorry, but we no longer support emulators or simulators. However, you can now run your selenium tests on real iOS and Android devices. Real devices are faster and more stable. Please contact our Sales team by visiting https://www.browserstack.com/contact and creating a query related to Sales.
