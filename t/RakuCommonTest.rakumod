use	v6.e.PREVIEW;

use	nqp;
use	experimental :rakuast;

my role RakuCommonTest {
	method EXPR(str $preclim = '') {
		# The following function is declared in Raku::Common in src/Raku/Grammar.nqp (about lines 45 and 94)
		# It should be callable if the slang is working
		my $test-here := self.new-cursor();
		callsame;
	}
}

use Slangify RakuCommonTest, Mu;

# vim: expandtab shiftwidth=4
