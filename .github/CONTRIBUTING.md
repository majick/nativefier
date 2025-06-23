# Contributing to Nativefier

## Issues

Issues are disabled. No discussion of the project will occur on Github.  In fact, I'll probably move the project at some point.

## Pull Requests

See [here](https://github.com/majick/nativefier/blob/master/HACKING.md) for instructions on how to set up a development environment. Note that the information there is probably wrong or inapplicable as I'm not a node developer, I'm just making sure the fucking thing works for my purposes.

# Style

- The prior dude followed the [Airbnb Style Guide](https://github.com/airbnb/javascript), but I don't care about Airbnb or his style. The code sucks, the language sucks, the runtime environment sucks, everything about this project sucks.

I require 4-space indentation and if your node shit or whatever doesn't like that, tough shit. eslint sucks and is wrong.


Current procedure is to send a pull request and if it runs I'll merge it. All CI has been removed. All the weird Microsoft-based test harness shit is ignored, but feel free to monkey with it yourself. Changes to the test system will be accepted only if they are based on unfucking it to the point it could be used by normal people.

# License
Your contributions are in the public domain.

If you don't have public domain where you live, well, petition or parliament or something to fix your laws. If you aren't willing or able to assign your changes to the public domain, don't send me pull requests.

The following commands the original dude thought would be helpful:

```bash
# Run specs only
npm run test

# Run linter only
npm run lint
```

Having said that, none of that is helpful at all because his test harness is terrible, this language is terrible, and the test is that it runs. Therefore I don't find any of that helpful at all.

Thank you so much for your contribution!
