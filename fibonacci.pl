use 5.010;

my %evolutions = (
    o => 'x',
    x => 'ox',
);

my $families = 'o';

if ( $ARGV[0] !~ /^[1-9][0-9]*$/ or $ARGV[0] > 28 ) {
    warn "Index must be a positive integer between 1 and 28.";
    exit;
}

my @index = (1..$ARGV[0]-1);
for (@index) {
    $families =~ s/([ox])/$evolutions{$1}/g;
}
say $count = () = $families =~ m/./g;
