
package Paws::SageMaker::ListTrainingJobs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StatusEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrainingJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListTrainingJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTrainingJobs - Arguments for method ListTrainingJobs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTrainingJobs on the 
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListTrainingJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTrainingJobs.

As an example:

  $service_obj->ListTrainingJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker/ListTrainingJobs>
=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that only training jobs created after the specified time
(timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only training jobs created before the specified
time (timestamp).



=head2 LastModifiedTimeAfter => Str

A filter that returns only training jobs modified after the specified
time (timestamp).



=head2 LastModifiedTimeBefore => Str

A filter that returns only training jobs modified before the specified
time (timestamp).



=head2 MaxResults => Int

The maximum number of training jobs to return in the response.



=head2 NameContains => Str

A string in the training job name. This filter returns only models
whose name contains the specified string.



=head2 NextToken => Str

If the result of the previous C<ListTrainingJobs> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of training jobs, use the token in the next request.



=head2 SortBy => Str

The field to sort results by. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">, C<"Status">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">

=head2 StatusEquals => Str

A filter that retrieves only training jobs with a specific status.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTrainingJobs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

