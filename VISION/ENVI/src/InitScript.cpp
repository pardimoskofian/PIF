#include <opencv4/opencv2/opencv.hpp>
#include <opencv4/opencv2/highgui/highgui.hpp>
#include <iostream>
#include <stdint.h>


void calc_moyenne(){

    std::cout<<"Calcule de la moyenne\n";

}

void etalonage(cv::Mat img){
    cv::Mat hsv_img, dst;    
    cv::cvtColor(img, hsv_img, cv::COLOR_BGR2HSV);
    //cv::imshow("HSV img", hsv_img);
    cv::threshold(img, dst, 0, 255, cv::THRESH_BINARY_INV); 
    cv::imshow("Threshold img", dst);

    //cv::imwrite("opencv-thresh-binary-inv.jpg", dst); 
    /*
    
        ret,thresh1 = cv.threshold(img,127,255,cv.THRESH_BINARY)
        ret,thresh2 = cv.threshold(img,127,255,cv.THRESH_BINARY_INV)
        ret,thresh3 = cv.threshold(img,127,255,cv.THRESH_TRUNC)
        ret,thresh4 = cv.threshold(img,127,255,cv.THRESH_TOZERO)
        ret,thresh5 = cv.threshold(img,127,255,cv.THRESH_TOZERO_INV)
    */

}


void quick_sort(uint8_t* array, int32_t array_size){
    
    std::cout<<"[DEBUG] Quik sort\n Array Size: " << array_size << "\n";
    bool flag;
    uint8_t tmp;

    do{// sort all samples using quick short as the sample size is small
        flag = 0;
        for(int32_t k = 0; k != array_size; k++){
            if (array[k] > array[k + 1]){
                tmp = array[k + 1];
                array[k + 1] = array[k];
                array[k] = tmp;
                flag = 1;
            }
        }
    }while(flag);
}

int median_cal(cv::Mat img){
    
    int32_t total_px = img.rows * img.cols;
    uint8_t* tab_value = (uint8_t*) malloc(sizeof(uint8_t) * total_px/2);
    
    bool k = 1;
    uint32_t compt = 0;
    for(uint16_t i = 0; i != img.rows; i++){
        for(uint16_t j = 0; j != img.cols; j++){
            if (k){

                tab_value[compt] = (uint8_t) img.at<cv::Vec3b>(i,j)[0];
                k = 0;
                compt+=1;
            }
            else{
                k = 1;
            }
            

        }
    }
    
    quick_sort(tab_value, total_px/2);
    std::cout<<"[DEBUG] Quik sort DONE\n";
    for(int i = 0; i != total_px/2; i++){
        std::cout<<"[DEBUG] ID: "<< i << " VALUE: "<< (int)tab_value[i]<<"\n";
    }

    int median = (int)tab_value[total_px / 2];
    free(tab_value);

    std::cout<<"[DEBUG] Median: "<< median <<"\n";
    return median;
    
}

uint8_t mean_cal(cv::Mat img){
    int sum = 0;
    int total_px = img.rows * img.cols;

    for(uint16_t i = 0; i != img.rows; i++){
        for(uint16_t j = 0; j != img.cols; j++){
            // std::cout<<"Pixel n °"<<i * j + j<<" Value: "<<(int) img.at<cv::Vec3b>(i,j)[0] <<"\n";
            sum += (uint8_t) img.at<cv::Vec3b>(i,j)[0];
        }
    }
    std::cout<<"[DEBUG] Sum: "<< sum <<" Totale px: "<< total_px <<" Mean value "<<sum / total_px<<"\n";
    return sum / total_px;
}

cv::Mat grey_img(cv::Mat img){

    cv::Mat dst_mean, dst_median, dst_main, graymat;
    cv::cvtColor(img, graymat, cv::COLOR_BGR2GRAY);
    //cv::imshow("Grey Img", graymat);
    std::cout<<"[DEBUG] Grey IMG\n";

    return graymat;
    // cv::imwrite("../Imres/test_threshold    ")
}

int main(int argc, char** argv) {
    

    // Charger l'image depuis un fichier JPG IMREAD_GRAYSCALE
    cv::Mat image = cv::imread("../Images/ground.jpg");
    cv::Mat img;

    // Vérifier si l'image a été chargée avec succès
    if (!image.data){
        std::cout << "Erreur lors du chargement de l'image." << std::endl;
        return -1; 
    }

    // Afficher l'image dans une fenêtre
    //cv::imshow("Image test", image);
    // Apply the Gaussian Blur filter. 
    // The Size object determines the size of the filter (the "range" of the blur)
    cv::GaussianBlur( image, img, cv::Size( 9, 9 ), 2);
    //cv::imshow("Image lisse", img);

    std::vector<int> compression_params;
    compression_params.push_back(cv::IMWRITE_PNG_COMPRESSION);
    compression_params.push_back(9);
    cv::Mat greyImg = grey_img(img);
    cv::imshow("Grey", greyImg);

    bool result = false;
    try
    {
        result = cv::imwrite("image_grise.png", greyImg, compression_params);

    }
    catch (const cv::Exception& ex)
    {
        fprintf(stderr, "Exception converting image to PNG format: %s\n", ex.what());
    }

    //std::cout<<greyImg.empty();
    //std::cout<<"\n";
    // Attendre une touche pour fermer la fenêtre
    cv::waitKey(0);

    return EXIT_SUCCESS;
}
