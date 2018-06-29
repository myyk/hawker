
TODO:

want to try this: https://www.xpdfreader.com/pdftotext-man.html

If installing on debian in Docker:

    apt-get update && apt-get install -y xpdf



App side:

https://facebook.github.io/react-native/

https://github.com/Microsoft/TypeScript-React-Native-Starter


Run container:

    #docker volume create my-vol

    docker build -t xpdf .
    docker run -it --rm --name my-xpdf -v /Users/myyk/workspace/hawker-stalls/txt:/output xpdf

	find /pdf | xargs -L 1 -t pdftotext
    cp /pdf/*.txt /output/