# cms
# Autogenerated from man page /usr/share/man/man1/cms.1ssl.gz
complete -c cms -o help -d 'Print out a usage message'
complete -c cms -o encrypt -d 'Encrypt mail for the given recipient certificates'
complete -c cms -o decrypt -d 'Decrypt mail using the supplied certificate and private key'
complete -c cms -o debug_decrypt -d 'This option sets the \\s-1CMS_DEBUG_DECRYPT\\s0 flag'
complete -c cms -o sign -d 'Sign mail using the supplied certificate and private key'
complete -c cms -o verify -d 'Verify signed mail'
complete -c cms -o cmsout -d 'Takes an input message and writes out a \\s-1PEM\\s0 encoded \\s-1CMS\\s0 structu…'
complete -c cms -o resign -d 'Resign a message: take an existing message and one or more new signers'
complete -c cms -o data_create -d 'Create a \\s-1CMS\\s0 Data type'
complete -c cms -o data_out -d 'Data type and output the content'
complete -c cms -o digest_create -d 'Create a \\s-1CMS\\s0 DigestedData type'
complete -c cms -o digest_verify -d 'Verify a \\s-1CMS\\s0 DigestedData type and output the content'
complete -c cms -o compress -d 'Create a \\s-1CMS\\s0 CompressedData type'
complete -c cms -o uncompress -d 'Uncompress a \\s-1CMS\\s0 CompressedData type and output the content'
complete -c cms -o EncryptedData_encrypt -d 'Encrypt content using supplied symmetric key and algorithm using a \\s-1CMS\\s0…'
complete -c cms -o sign_receipt -d 'Generate and output a signed receipt for the supplied message'
complete -c cms -o verify_receipt -d 'Verify a signed receipt in filename receipt'
complete -c cms -o in -d 'The input message to be encrypted or signed or the message to be decrypted or…'
complete -c cms -o inform -d 'This specifies the input format for the \\s-1CMS\\s0 structure'
complete -c cms -o rctform -d 'Specify the format for a signed receipt for use with the -receipt_verify oper…'
complete -c cms -o out -d 'The message text that has been decrypted or verified or the output \\s-1MIME\\s…'
complete -c cms -o outform -d 'This specifies the output format for the \\s-1CMS\\s0 structure'
complete -c cms -o stream -o indef -o noindef -d 'The -stream and -indef options are equivalent and enable streaming I/O for en…'
complete -c cms -o content -d 'This specifies a file containing the detached content, this is only useful wi…'
complete -c cms -o text -d 'This option adds plain text (text/plain) \\s-1MIME\\s0 headers to the supplied …'
complete -c cms -o noout -d 'For the -cmsout operation do not output the parsed \\s-1CMS\\s0 structure'
complete -c cms -o print -d 'For the -cmsout operation print out all fields of the \\s-1CMS\\s0 structure'
complete -c cms -o CAfile -d 'A file containing trusted \\s-1CA\\s0 certificates, only used with -verify'
complete -c cms -o CApath -d 'A directory containing trusted \\s-1CA\\s0 certificates, only used with -verify'
complete -c cms -o no-CAfile -d 'Do not load the trusted \\s-1CA\\s0 certificates from the default file location'
complete -c cms -o no-CApath -d 'Do not load the trusted \\s-1CA\\s0 certificates from the default directory loc…'
complete -c cms -o md -d 'Digest algorithm to use when signing or resigning'
complete -c cms -o nointern -d 'When verifying a message normally certificates (if any) included in the messa…'
complete -c cms -o noverify -d 'Do not verify the signers certificate of a signed message'
complete -c cms -o nocerts -d 'When signing a message the signer\'s certificate is normally included with thi…'
complete -c cms -o noattr -d 'Normally when a message is signed a set of attributes are included which incl…'
complete -c cms -o nosmimecap -d 'Exclude the list of supported algorithms from signed attributes, other option…'
complete -c cms -o binary -d 'Normally the input message is converted to \\*(L"canonical\\*(R" format which i…'
complete -c cms -o crlfeol -d 'Normally the output file uses a single \\s-1LF\\s0 as end of line'
complete -c cms -o asciicrlf -d 'When signing use \\s-1ASCII CRLF\\s0 format canonicalisation'
complete -c cms -o nodetach -d 'When signing a message use opaque signing: this form is more resistant to tra…'
complete -c cms -o certfile -d 'Allows additional certificates to be specified'
complete -c cms -o certsout -d 'Any certificates contained in the message are written to file'
complete -c cms -o signer -d 'A signing certificate when signing or resigning a message, this option can be…'
complete -c cms -o recip -d 'When decrypting a message this specifies the recipients certificate'
complete -c cms -o keyid -d 'Use subject key identifier to identify certificates instead of issuer name an…'
complete -c cms -o receipt_request_all -o receipt_request_first -d 'For -sign option include a signed receipt request'
complete -c cms -o receipt_request_from -d 'For -sign option include a signed receipt request'
complete -c cms -o receipt_request_to -d 'Add an explicit email address where signed receipts should be sent to'
complete -c cms -o receipt_request_print -d 'For the -verify operation print out the contents of any signed receipt reques…'
complete -c cms -o secretkey -d 'Specify symmetric key to use'
complete -c cms -o secretkeyid -d 'The key identifier for the supplied symmetric key for KEKRecipientInfo type'
complete -c cms -o econtent_type -d 'Set the encapsulated content type to type if not supplied the Data type is us…'
complete -c cms -o inkey -d 'The private key to use when signing or decrypting'
complete -c cms -o keyopt -d 'For signing and encryption this option can be used multiple times to set cust…'
complete -c cms -o passin -d 'The private key password source'
complete -c cms -o rand -d 'A file or files containing random data used to seed the random number generat…'
complete -c cms -o writerand -d 'Writes random data to the specified file upon exit'
complete -c cms -o to -o from -o subject -d 'The relevant mail headers'

