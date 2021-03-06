
package Paws::IAM::ListEntitiesForPolicyResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has PolicyGroups => (is => 'ro', isa => 'ArrayRef[Paws::IAM::PolicyGroup]');
  has PolicyRoles => (is => 'ro', isa => 'ArrayRef[Paws::IAM::PolicyRole]');
  has PolicyUsers => (is => 'ro', isa => 'ArrayRef[Paws::IAM::PolicyUser]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListEntitiesForPolicyResponse

=head1 ATTRIBUTES


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 PolicyGroups => ArrayRef[L<Paws::IAM::PolicyGroup>]

A list of IAM groups that the policy is attached to.


=head2 PolicyRoles => ArrayRef[L<Paws::IAM::PolicyRole>]

A list of IAM roles that the policy is attached to.


=head2 PolicyUsers => ArrayRef[L<Paws::IAM::PolicyUser>]

A list of IAM users that the policy is attached to.


=head2 _request_id => Str


=cut

