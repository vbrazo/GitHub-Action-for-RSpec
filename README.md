# GitHub Action for running rspec commands

Each time that new code is pushed into your repo, you can have a [rspec](https://rspec.info/) command automatically run.

$ __rspec --help__
```
Usage: rspec [options] [files or directories]

    -I PATH                            Specify PATH to add to $LOAD_PATH (may be used more than once).
    -r, --require PATH                 Require a file.
    -O, --options PATH                 Specify the path to a custom options file.
        --order TYPE[:SEED]            Run examples by the specified order type.
                                         [defined] examples and groups are run in the order they are defined
                                         [rand]    randomize the order of groups and examples
                                         [random]  alias for rand
                                         [random:SEED] e.g. --order random:123
        --seed SEED                    Equivalent of --order rand:SEED.
        --bisect[=verbose]             Repeatedly runs the suite in order to isolate the failures to the
                                         smallest reproducible case.
        --[no-]fail-fast[=COUNT]       Abort the run after a certain number of failures (1 by default).
        --failure-exit-code CODE       Override the exit code used when there are failing specs.
    -X, --[no-]drb                     Run examples via DRb.
        --drb-port PORT                Port to connect to the DRb server.

  **** Output ****

    -f, --format FORMATTER             Choose a formatter.
                                         [p]rogress (default - dots)
                                         [d]ocumentation (group and example names)
                                         [h]tml
                                         [j]son
                                         [f]ailures ("file:line:reason", suitable for editors integration)
                                         custom formatter class name
    -o, --out FILE                     Write output to a file instead of $stdout. This option applies
                                         to the previously specified --format, or the default format
                                         if no format is specified.
        --deprecation-out FILE         Write deprecation warnings to a file instead of $stderr.
    -b, --backtrace                    Enable full backtrace.
        --force-color, --force-colour  Force the output to be in color, even if the output is not a TTY
        --no-color, --no-colour        Force the output to not be in color, even if the output is a TTY
    -p, --[no-]profile [COUNT]         Enable profiling of examples and list the slowest examples (default: 10).
        --dry-run                      Print the formatter output of your suite without
                                         running any examples or hooks
    -w, --warnings                     Enable ruby warnings

  **** Filtering/tags ****

    In addition to the following options for selecting specific files, groups, or
    examples, you can select individual examples by appending the line number(s) to
    the filename:

      rspec path/to/a_spec.rb:37:87

    You can also pass example ids enclosed in square brackets:

      rspec path/to/a_spec.rb[1:5,1:6] # run the 5th and 6th examples/groups defined in the 1st group

        --only-failures                Filter to just the examples that failed the last time they ran.
    -n, --next-failure                 Apply `--only-failures` and abort after one failure.
                                         (Equivalent to `--only-failures --fail-fast --order defined`)
    -P, --pattern PATTERN              Load files matching pattern (default: "spec/**/*_spec.rb").
        --exclude-pattern PATTERN      Load files except those matching pattern. Opposite effect of --pattern.
    -e, --example STRING               Run examples whose full nested names include STRING (may be
                                         used more than once)
    -E, --example-matches REGEX        Run examples whose full nested names match REGEX (may be
                                         used more than once)
    -t, --tag TAG[:VALUE]              Run examples with the specified tag, or exclude examples
                                       by adding ~ before the tag.
                                         - e.g. ~slow
                                         - TAG is always converted to a symbol
        --default-path PATH            Set the default path where RSpec looks for examples (can
                                         be a path to a file or a directory).

  **** Utility ****

        --init                         Initialize your project with RSpec.
    -v, --version                      Display the version.
    -h, --help                         You're looking at it.
```
