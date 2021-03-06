
package Paws::Greengrass::UpdateGroup;
  use Moose;
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::UpdateGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateGroup - Arguments for method UpdateGroup on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroup on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method UpdateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroup.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $UpdateGroupResponse = $greengrass->UpdateGroup(
      GroupId => 'My__string',
      Name    => 'My__string',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/UpdateGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.



=head2 Name => Str

The name of the definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroup in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

