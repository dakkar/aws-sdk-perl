
package Paws::CloudFront::CreateStreamingDistribution;
  use Moose;
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/streaming-distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateStreamingDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateStreamingDistribution - Arguments for method CreateStreamingDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamingDistribution2017_10_30 on the 
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateStreamingDistribution2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamingDistribution2017_10_30.

As an example:

  $service_obj->CreateStreamingDistribution2017_10_30(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateStreamingDistribution>
=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

The streaming distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamingDistribution2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

