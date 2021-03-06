
package Paws::EC2::DeprovisionByoipCidrResult;
  use Moose;
  has ByoipCidr => (is => 'ro', isa => 'Paws::EC2::ByoipCidr', request_name => 'byoipCidr', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeprovisionByoipCidrResult

=head1 ATTRIBUTES


=head2 ByoipCidr => L<Paws::EC2::ByoipCidr>

Information about the address range.


=head2 _request_id => Str


=cut

