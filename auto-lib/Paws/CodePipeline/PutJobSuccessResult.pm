
package Paws::CodePipeline::PutJobSuccessResult;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'continuationToken' );
  has CurrentRevision => (is => 'ro', isa => 'Paws::CodePipeline::CurrentRevision', traits => ['NameInRequest'], request_name => 'currentRevision' );
  has ExecutionDetails => (is => 'ro', isa => 'Paws::CodePipeline::ExecutionDetails', traits => ['NameInRequest'], request_name => 'executionDetails' );
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutJobSuccessResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutJobSuccessResult - Arguments for method PutJobSuccessResult on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutJobSuccessResult on the 
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PutJobSuccessResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutJobSuccessResult.

As an example:

  $service_obj->PutJobSuccessResult(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PutJobSuccessResult>
=head1 ATTRIBUTES


=head2 ContinuationToken => Str

A token generated by a job worker, such as an AWS CodeDeploy deployment
ID, that a successful job provides to identify a custom action in
progress. Future jobs will use this token in order to identify the
running instance of the action. It can be reused to return additional
information about the progress of the custom action. When the action is
complete, no continuation token should be supplied.



=head2 CurrentRevision => L<Paws::CodePipeline::CurrentRevision>

The ID of the current revision of the artifact successfully worked upon
by the job.



=head2 ExecutionDetails => L<Paws::CodePipeline::ExecutionDetails>

The execution details of the successful job, such as the actions taken
by the job worker.



=head2 B<REQUIRED> JobId => Str

The unique system-generated ID of the job that succeeded. This is the
same ID returned from PollForJobs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutJobSuccessResult in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

