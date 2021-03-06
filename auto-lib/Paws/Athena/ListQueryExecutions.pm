
package Paws::Athena::ListQueryExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueryExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::ListQueryExecutionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListQueryExecutions - Arguments for method ListQueryExecutions on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueryExecutions on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method ListQueryExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueryExecutions.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $ListQueryExecutionsOutput = $athena->ListQueryExecutions(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListQueryExecutionsOutput->NextToken;
    my $QueryExecutionIds = $ListQueryExecutionsOutput->QueryExecutionIds;

    # Returns a L<Paws::Athena::ListQueryExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/ListQueryExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of query executions to return in this request.



=head2 NextToken => Str

The token that specifies where to start pagination if a previous
request was truncated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueryExecutions in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

