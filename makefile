generate:
	pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cu130
	pip3 install -r requirements.txt
	pip install tensorboard
	@echo "download wget and put it on PATH to get pth"
train:
	# batch size --bs 768 to 128
	python train.py --depth=16 --bs=128 --ep=200 --fp16=1 --alng=1e-4 --wpe=0.1 --data_path="D:\imagenet\ILSVRC\Data\CLS-LOC"