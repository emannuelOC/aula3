//
//  PhotosViewController.m
//  Miscellanea
//
//  Created by Emannuel Carvalho on 4/30/16.
//  Copyright © 2016 Emannuel Carvalho. All rights reserved.
//

#import "PhotosViewController.h"

@interface PhotosViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *pictureImageView;
@end

@implementation PhotosViewController

- (IBAction)changePicture {
    // criando o imagePicker
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    // configurando o imagePicker
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.allowsEditing = YES;
    // apresentando-o
    [self presentViewController:imagePicker animated:YES completion:nil];
}

#pragma mark - ImagePicker delegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    UIImage *picture = (UIImage *)info[UIImagePickerControllerEditedImage];
    _pictureImageView.image = picture;
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
