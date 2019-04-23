**Chrome**

```bash
${list}    Create List    --no-sandbox    --lang=ja
${list2}    Create List
${chrome_options}    Create Dictionary    args    ${list}    extensions    ${list2}
${desired_capabilities} =    Create Dictionary    os    ${OS}    os_version    #{OS_VERSION}    browser    #{BROWSER}    browser_version    #{BROWSER}    browserName    #{BROWSER}    resolution    #{RESOLUTION}    goog:chromeOptions    ${chrome_options}
```

**Firefox**

TODO

**IE**

```bash
${desired_capabilities} =    Create Dictionary    os    #{OS}    os_version    #{OS_VERSION}    browser    #{BROWSER}    browser_version    #{BROWSER}    browserName    internet explorer     resolution    #{RESOLUTION}
```

**Edge**

```bash
${desired_capabilities} =    Create Dictionary    os    #{OS}    os_version    #{OS_VERSION}    browser    #{BROWSER}    browser_version    #{BROWSER}    browserName    MicrosoftEdge     resolution    #{RESOLUTION}
```

ref:

https://qiita.com/umasaki/items/ae49b170c78d7305f7e7
https://github.com/SeleniumHQ/selenium/wiki/DesiredCapabilities
