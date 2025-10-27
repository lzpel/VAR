generate:
	pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cu130
train:
	python train.py --depth=16 --bs=768 --ep=200 --fp16=1 --alng=1e-3 --wpe=0.1 --data_path=/path/to/imagenet