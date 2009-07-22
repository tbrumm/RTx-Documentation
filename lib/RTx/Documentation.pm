=pod

=head1 NAME

RTx::Documentation - An RT extension

=head1 DESCRIPTION

=cut

package RTx::Documentation;

use strict;
use warnings;

our $VERSION = '0.01';

{
    package RT::Queue;

    sub Documentation {
        my $self = shift;
        my $attr = $self->FirstAttribute( 'RTx::Documentation' );
        return unless $attr and $attr->id;
        return $attr->Content;
    }
}

=head1 AUTHORS

Chad Granum E<lt>chad@opensourcery.comE<gt>

=head1 COPYRIGHT

Copyright 2009 OpenSourcery, LLC.

This file is part of RTx-Documentation

RTx-Documentation is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

RTx-Documentation is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with RTx-Documentation.  If not, see <http://www.gnu.org/licenses/>.

=cut

1;
