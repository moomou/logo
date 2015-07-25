What is this?
===
A manual collection of tech logos.

Why?
===
I use this to build my [resume](http://www.moo-mou.com/).

Cool. How do I use this?
===
You should use the Github API to fetch the image and either cache those request or convert the result to base64 for your use.

    Example

        api.github.com/repos/moo-mou/logo/contents/_all/redis.png
        
Eventually, the logo collection should be substantial enough someone could just slurp all these into an elasticsearch or something to provide a logo API (that's the long term goal anyways).

Contribution
===
Please! If you would like to expand the logo available, please submit a pull request.

All images should be PNG and be less than 1MB in size. Ideally with transparent background and as "emblematic" as possible.
