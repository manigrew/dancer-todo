#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use todo;

todo->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use todo;
use Plack::Builder;

builder {
    enable 'Deflater';
    todo->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use todo;
use todo_admin;

use Plack::Builder;

builder {
    mount '/'      => todo->to_app;
    mount '/admin'      => todo_admin->to_app;
}

=end comment

=cut

