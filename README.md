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

### Selenium Library

```{shell}
pip install robotframework-seleniumlibrary
```

When using the Selenium library, it is necessary to set up the webdriver for the specific version of the browser being used.

On the [Selenium Documentation Downloads Page](https://www.selenium.dev/downloads/) in the section 'Platforms Supported by Selenium', we can find a list of supported browsers along with a link to download each corresponding webdriver.

Once we have downloaded the webdriver, we must extract the file into the folder PYTHONPATH/Scripts.