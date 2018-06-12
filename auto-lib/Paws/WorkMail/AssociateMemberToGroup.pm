
package Paws::WorkMail::AssociateMemberToGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has MemberId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateMemberToGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::AssociateMemberToGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::AssociateMemberToGroup - Arguments for method AssociateMemberToGroup on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateMemberToGroup on the 
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method AssociateMemberToGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateMemberToGroup.

As an example:

  $service_obj->AssociateMemberToGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/AssociateMemberToGroup>
=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The group for which the member is associated.



=head2 B<REQUIRED> MemberId => Str

The member to associate to the group.



=head2 B<REQUIRED> OrganizationId => Str

The organization under which the group exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateMemberToGroup in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

