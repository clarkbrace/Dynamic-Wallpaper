import os
import moviepy.video.io.ImageSequenceClip

# https://stackoverflow.com/questions/44947505/how-to-make-a-movie-out-of-images-in-python



import cv2



def load_images():
    image_folder = "C:/Users/clark/OneDrive/Documents/Processing/Dynamic Wallpaper/Dynamic_Wallpaper/ImageFrames"
    video_output_name = "DynamicWallPaper.mp4"

    desired_frame_rate = 8
    fps = 24
    repeated_frames = fps / desired_frame_rate

    fourcc = cv2.VideoWriter.fourcc(*'mp4v')

    images = [img for img in os.listdir(image_folder) if img.endswith('.png')]
    video = cv2.VideoWriter(video_output_name, fourcc , fps, ( 7680, 2160))

    for image in images:
        for frames in range(int(repeated_frames)):
            video.write(cv2.imread(os.path.join(image_folder, image)))

    cv2.destroyAllWindows()
    video.release()

    # # 8 Frames per second. Total duratiopn will be Total Frames / 8
    #
    # durations = []
    #
    # image_files = [os.path.join(image_folder, img)
    #                for img in os.listdir(image_folder)
    #                if img.endswith(".png")]
    #
    # clip = moviepy.video.io.ImageSequenceClip.ImageSequenceClip(image_files, 9, load_images=True,)
    # clip.write_videofile('my_video.MOV')

