
package Paws::GuardDuty::ListThreatIntelSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ThreatIntelSetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'threatIntelSetIds');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListThreatIntelSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ThreatIntelSetIds => ArrayRef[Str|Undef]




=head2 _request_id => Str


=cut

