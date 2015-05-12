#name of the channels where this feature will be used
my @channels  = ("cacasurtondoigt");

sub bootstrap {
    my ($msg, $server, $target) = @_;
    Irssi:print($msg);
    Irssi:print($server);
    Irssi:print($target->{name});
    if ($target->{name} eq "#ulbba3info") {
        $server->command("MSG " . $target->{name}. " " . $msg . " excellent");
    }
    Irssi::signal_stop();
}

#let's add the sub as a signal and let's play
Irssi::signal_add('send text', 'bootstrap');
