<?php
require '../vendor/autoload.php';

use Aws\S3\S3Client;

use Aws\Exception\AwsException;
    $bucketName = "230-s3";

    if(isset($_POST['s3-submit'])) {
    $file = $_FILES['s3-image'];
    $file_name = $file['name'];
    $file_tmp_name = $file['tmp_name'];
    $file_error = $file['error'];
    $file_size = $file['size'];

    $ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

    try {

        $s3Client = S3Client::factory(
            array('region'=> 'us-east-1',
            'credentials'=> array(
                'key'=> "",
                'secret'=> ""
            )
            )
        );
        $result = $s3Client->putObject([

            'Bucket'=>$bucketName,
            'key'=> 'test_uploads/'.uniqid('',true).'.'.$ext,
            'SourceFile'=>$file_tmp_name,
            'ACL'=>'public-read'
        ]);

        echo 'Success! Photo URL: '$result->get('ObjectURL');

    } catch (Aws\S3\Exception\S3Exception $e)   {
        die('Error uploading file: '.$e->getMessage());
    }
}