# Certificate transparency for Flutter

To protect our apps from man-in-the-middle attacks one of the first things that usually springs to mind is certificate pinning. However, the issues of certificate pinning are numerous. Firstly deciding on a reliable set of keys to pin against is tough. Once you made that decision if your expectations don't match reality your users suffer from not being able to access your app or website. Smashing Magazine learned about this the hard way in late 2016 when they blocked users' access for up to a year because of a mismatch between the pins and the certificates. On mobile fixing an invalid pin means pushing out a new version of an app which can still take a while to reach every user.

So with certificate pinning falling out of favor, what should you do? The new kid in town is [certificate transparency](https://certificate.transparency.dev/).

This project is based on [Appmattus' Certificate Transparency for Android and JVM](https://github.com/appmattus/certificatetransparency)

## Getting Started

## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning.

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE.md)

This project is licensed under the Apache License, Version 2.0 - see the
[LICENSE](LICENSE) file for details. Appmattus' certificate transparency for Android and JVM is [Apache Version 2.0 Licensed](https://github.com/appmattus/certificatetransparency/blob/main/LICENSE.md).
