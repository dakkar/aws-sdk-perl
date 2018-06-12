
package Paws::SES::DeleteConfigurationSet;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DeleteConfigurationSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteConfigurationSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DeleteConfigurationSet - Arguments for method DeleteConfigurationSet on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConfigurationSet on the 
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DeleteConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConfigurationSet.

As an example:

  $service_obj->DeleteConfigurationSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteConfigurationSet>
=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConfigurationSet in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

