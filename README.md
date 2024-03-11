# robotframework-web-automation-dojo

Demonstration of how Robot Framework works through automated tests created for a web application.

## Installation

Robot Framework is implemented with Python, so you need to have [Python](https://www.python.org/downloads/) installed.
On Windows machines, make sure to add [Python to PATH](https://docs.python.org/3/using/windows.html#the-full-installer) during installation.

## Installing Robot Framework

Installing Robot Framework with pip is simple:

```{shell}
pip install robotframework
```


## Installing Robot Framework Libraries

We need to install the Robot Framework Libraries that we plan to use in our tests.

### [Browser Library](https://robotframework-browser.org/)

Browser Library requires [NodeJs](https://nodejs.org/en/download).

[Install Browser Library:](https://docs.robotframework.org/docs/different_libraries/browser)

```{shell}
pip install robotframework-browser
```

Install the node dependencies:

```{shell}
rfbrowser init
```

- if rfbrowser is not found, try:

```{shell}
python -m Browser.entry init
```

## Code Editor
We need to install a code editor to write Robot Framework scripts. We recommend using [Visual Studio Code](https://code.visualstudio.com/download).