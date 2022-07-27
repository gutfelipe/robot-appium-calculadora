# Appium with Robotframework Calculadora

Preconditions
-------------

Install [Robot Framework](http://robotframework.org) and [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)

The simplest way is using [pip](http://pip-installer.org) package manager::

  pip install -r requirements.txt


Device Setup
------------
After installing the library, you still need to setup an simulator/emulator or real device to use in tests.
iOS and Android have separate paths to follow, and those steps better explained in [Appium Driver Setup Guide](http://appium.io/docs/en/about-appium/getting-started/?lang=en).
Please follow the **Driver-Specific Setup** according to platform.


Running tests
-------------

Test cases are located in the ``tests`` folder. They can be
executed using the ``robot`` command::

    robot -d logs/ tests/*

You can also run an iOS or Android case file/test::

    robot -d logs/ -v DEVICETYPE:ANDROID -i custom_example_multiplication  tests/calculadora_custom_feature.robot


Run test with tags ("i" to include and "e" to exclude)

    robot -d logs/ -v DEVICETYPE:ANDROID -i custom_example_multiplication  tests/calculadora_custom_feature.robot

    robot -d logs/ -v DEVICETYPE:ANDROID -e custom_example_multiplication  tests/calculadora_custom_feature.robot 




Generated results
-----------------
After `running tests`_ you will get report and log in HTML format. Example
files are also visible online in case you are not interested in running
the demo yourself:

- `report.html`_
- `log.html`_

.. _report.html: https://serhatbolsu.github.io/robotframework-appium-sample/docs/report.html
.. _log.html: https://serhatbolsu.github.io/robotframework-appium-sample/docs/log.html
