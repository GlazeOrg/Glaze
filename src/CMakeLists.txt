add_executable(Glaze public/main.cpp private/main.h)
# 添加头文件搜索路径
include_directories(${PROJECT_SOURCE_DIR}/src/private)
include_directories(${OpenCV_INCLUDE_DIRS})       
link_directories(${OpenCV_LIB_DIR})              
target_link_libraries(Glaze 
PRIVATE
    opencv_stitching
    opencv_video
    opencv_objdetect
    opencv_calib3d
    opencv_dnn
    opencv_photo
    opencv_highgui
    opencv_videoio
    opencv_features2d
    opencv_imgcodecs
    opencv_imgproc
    opencv_flann
    opencv_ml
    opencv_core
)

# add_subdirectory()

