# robot-framework-cheatrepo

Log current url to console:

```
${CURRENT_URL}=     Get Location
Log To Console    ${CURRENT_URL}
```

Wait for page load:

```
Wait For Condition    return document.readyState == "complete"
```
