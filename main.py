import mnist_loader
import network

training_data, validation_data, test_data = mnist_loader.load_data_wrapper()
net = network.Network([784, 30, 10])
ev_cost, ev_acc, tr_cost, training_accuracy = net.SGD(
    training_data, 5, 10, 3.0,
    evaluation_data=test_data,
    monitor_training_accuracy=True
)

# Save results
import json
results = json.dumps({
    'metric': 'Accuracy',
    'value': float(training_accuracy[0])/50000.0
})

f = open('/workspace/overall.json','w')
f.write(results)
f.close()
