
package Paws::Glacier::AddTagsToVault;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glacier::TagMap');
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/tags?operation=add');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::AddTagsToVault - Arguments for method AddTagsToVault on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToVault on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method AddTagsToVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToVault.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To add tags to a vault
    # The example adds two tags to a my-vault.
    $glacier->AddTagsToVault(
      {
        'Tags' => {
          'Examplekey1' => 'examplevalue1',
          'Examplekey2' => 'examplevalue2'
        },
        'AccountId' => '-',
        'VaultName' => 'my-vault'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/AddTagsToVault>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 Tags => L<Paws::Glacier::TagMap>

The tags to add to the vault. Each tag is composed of a key and a
value. The value can be an empty string.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToVault in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

