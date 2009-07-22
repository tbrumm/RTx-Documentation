use inc::Module::Install;
RTx('RTx-Documentation');
version_from('lib/RTx/Documentation.pm');
author_from('lib/RTx/Documentation.pm');
license('GPL version 3');
requires(
    perl              => 5.008,
    RT                => '3.6.8',
    YAML              => 0,
);

WriteAll();
