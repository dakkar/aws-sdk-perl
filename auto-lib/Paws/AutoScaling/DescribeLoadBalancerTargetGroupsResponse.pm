
package Paws::AutoScaling::DescribeLoadBalancerTargetGroupsResponse;
  use Moose;
  has LoadBalancerTargetGroups => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LoadBalancerTargetGroupState]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeLoadBalancerTargetGroupsResponse

=head1 ATTRIBUTES


=head2 LoadBalancerTargetGroups => ArrayRef[L<Paws::AutoScaling::LoadBalancerTargetGroupState>]

Information about the target groups.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

