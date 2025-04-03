// De quien es. (Enumeracion)
enum FromWho { hers, me } // Mio o de ella

class Message {
  final String? text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({required this.text, this.imageUrl, required this.fromWho});
}
