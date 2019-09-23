#!/usr/bin/env python

import json
import csv

def main():
    with open('/home/carla/carla-autoware/results/results.json') as json_file:

        data = json.load(json_file)

    infraction_points = data['result'][0]['accuracies']['infraction points']
    avg_route_points = data['result'][0]['accuracies']['avg. route points']
    total_avg = data['result'][0]['accuracies']['total avg.']
    weather = data['result'][0]['accuracies']['weather']
    infractions = data['stderr']

    row = ['autoware', infraction_points, avg_route_points, total_avg, weather ,infractions]

    with open('/home/carla/carla-autoware/results/total_results.csv', 'a') as csvFile:
        writer = csv.writer(csvFile)
        writer.writerow(row)
    csvFile.close()



if __name__ == '__main__':

    main()
