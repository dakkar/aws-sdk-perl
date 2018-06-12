
package Paws::StepFunctions::SendTaskHeartbeat;
  use Moose;
  has TaskToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskToken' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendTaskHeartbeat');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::SendTaskHeartbeatOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::SendTaskHeartbeat - Arguments for method SendTaskHeartbeat on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendTaskHeartbeat on the 
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method SendTaskHeartbeat.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendTaskHeartbeat.

As an example:

  $service_obj->SendTaskHeartbeat(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/SendTaskHeartbeat>
=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskToken => Str

The token that represents this task. Task tokens are generated by the
service when the tasks are assigned to a worker (see
GetActivityTaskOutput$taskToken).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendTaskHeartbeat in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

