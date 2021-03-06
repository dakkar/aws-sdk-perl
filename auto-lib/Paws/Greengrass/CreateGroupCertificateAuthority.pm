
package Paws::Greengrass::CreateGroupCertificateAuthority;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroupCertificateAuthority');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/certificateauthorities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateGroupCertificateAuthorityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateGroupCertificateAuthority - Arguments for method CreateGroupCertificateAuthority on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroupCertificateAuthority on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateGroupCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroupCertificateAuthority.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateGroupCertificateAuthorityResponse =
      $greengrass->CreateGroupCertificateAuthority(
      GroupId         => 'My__string',
      AmznClientToken => 'My__string',    # OPTIONAL
      );

    # Results:
    my $GroupCertificateAuthorityArn =
      $CreateGroupCertificateAuthorityResponse->GroupCertificateAuthorityArn;

# Returns a L<Paws::Greengrass::CreateGroupCertificateAuthorityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateGroupCertificateAuthority>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroupCertificateAuthority in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

