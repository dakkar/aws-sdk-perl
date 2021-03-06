
package Paws::AppMesh::DeleteMeshOutput;
  use Moose;
  has Mesh => (is => 'ro', isa => 'Paws::AppMesh::MeshData', traits => ['NameInRequest'], request_name => 'mesh');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Mesh');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::DeleteMeshOutput

=head1 ATTRIBUTES


=head2 Mesh => L<Paws::AppMesh::MeshData>

The service mesh that was deleted.


=head2 _request_id => Str


=cut

