{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "22bb6f76",
   "metadata": {
    "papermill": {
     "duration": 0.007524,
     "end_time": "2023-08-14T19:14:05.949586",
     "exception": false,
     "start_time": "2023-08-14T19:14:05.942062",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "---\n",
    "title: \"Project 1- R Bootcamp\"\n",
    "author: \"Ognjen Raketic\"\n",
    "format: html\n",
    "editor: visual\n",
    "jupyter: python3\n",
    "---"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "043b51f0",
   "metadata": {
    "papermill": {
     "duration": 0.006316,
     "end_time": "2023-08-14T19:14:05.962543",
     "exception": false,
     "start_time": "2023-08-14T19:14:05.956227",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    " # **Project 1**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "889b9725",
   "metadata": {
    "papermill": {
     "duration": 0.006271,
     "end_time": "2023-08-14T19:14:05.975112",
     "exception": false,
     "start_time": "2023-08-14T19:14:05.968841",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Question 1 "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "83ed7852",
   "metadata": {
    "papermill": {
     "duration": 0.006216,
     "end_time": "2023-08-14T19:14:05.987830",
     "exception": false,
     "start_time": "2023-08-14T19:14:05.981614",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "In Craps people throw a pair of dice and bet on outcomes of these throws. In this project we practice our new knowledge by implementing the dice throws of craps and the automatic summation of points on the computer. We try to find out the probability of the possible outcomes and check the fairness of the dice.\n",
    "\n",
    "The First task in this project will be to write a function which allows you to virtually throw a pair of dice and sum up the points shown after the throw"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "fb23521c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-14T19:14:06.007586Z",
     "iopub.status.busy": "2023-08-14T19:14:06.004478Z",
     "iopub.status.idle": "2023-08-14T19:14:06.158280Z",
     "shell.execute_reply": "2023-08-14T19:14:06.156147Z"
    },
    "papermill": {
     "duration": 0.167265,
     "end_time": "2023-08-14T19:14:06.161370",
     "exception": false,
     "start_time": "2023-08-14T19:14:05.994105",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "roll_two_dice <- function() {\n",
    "  \n",
    "  #Create a six side die\n",
    "  die <- 1:6\n",
    "  \n",
    "  #roll two dice by making use of sample.\n",
    "  \n",
    "  dice <- sample(die, size=2,replace = TRUE)\n",
    "  \n",
    "  #Sum\n",
    "  sum(dice)\n",
    "}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3269b45c",
   "metadata": {
    "papermill": {
     "duration": 0.006257,
     "end_time": "2023-08-14T19:14:06.175659",
     "exception": false,
     "start_time": "2023-08-14T19:14:06.169402",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Question 2\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3174ca09",
   "metadata": {
    "papermill": {
     "duration": 0.006261,
     "end_time": "2023-08-14T19:14:06.188191",
     "exception": false,
     "start_time": "2023-08-14T19:14:06.181930",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Simulate and plot the result of your simulation using qplot() with the binwidth argument set to 1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "73f463f9",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-14T19:14:06.243301Z",
     "iopub.status.busy": "2023-08-14T19:14:06.202868Z",
     "iopub.status.idle": "2023-08-14T19:14:07.531185Z",
     "shell.execute_reply": "2023-08-14T19:14:07.529059Z"
    },
    "papermill": {
     "duration": 1.339632,
     "end_time": "2023-08-14T19:14:07.534190",
     "exception": false,
     "start_time": "2023-08-14T19:14:06.194558",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Warning message:\n",
      "“\u001b[1m\u001b[22m`qplot()` was deprecated in ggplot2 3.4.0.”\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nly9dunRw8ZRTTpk5c+a23kuhUKhWq9nsJKteAKC2CoVCa2vrmN5FtTrce9AmWdhVertSSjMK\nmz8tMaOQK60vDS6uXr36+9///uDicccd19DQMLr7yuV8JgMA2AbZbHbU4TFC5XJ5mK2TLOyy\nDc0ppbWlyszis5fTniqV89M278Wuu+46f/78wcWmpqbe3t5tvZeBK3b9/f0j/PolS5Zs611M\nEAM/fKVSqVKp1HqWsZXNZvP5fF9fX60HGXOFQiGbzZbL5ZH/AE9eDQ0N9fDTm8vl8vl8SmkU\nZ7NJZ1tPv5OX0288A6ffSqVSKpVe+Kv/F6rV6jDXniZZ2BWa90tp2cpNpZnFZ3N41ab+9rnt\ng19w4IEHHnjggYOLnZ2dGzZs2NZ7aW1trVQqXV3BP5ORyWQGziybNm0Kf8gVi8UpU6aM4odh\n0mlvb89ms/39/fWws8VisaurK3wENDY2TpkyJaVUD4+p02889XP6bWtrKxaLpVJpHHa2sbFx\nqE2T7G1kjVMPm1XM3XL3kwOLpY0rlm/oe8Vh2/wuOgCAeCZZ2KVM4fSj9374cx+7fcWq1Y/c\nf805i1pmHbFw15ZajwUAUHuT7KXYlNKcYy58f++lNyw65+mezB4HHHrB6Sdmaj0SAMBEMPnC\nLmVyRxx7+hHH1noMAIAJZrK9FAsAwBCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2\nAABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIO\nACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIOACAIYQcAEES+1gNMRP39\n/dVqtdZTjLn+/v677747pTRr1qyWlpZajzO2qtVqqVSq9RTj4cEHH+zq6mpvb995551rPcuY\nK5VK9XCorlmz5r777stkMnvuuWetZxlzdXL6rVQqA6ffXXfddcqUKbUeZ2xVKpU6Of2uXLly\n48aNbW1tM2fOrOEYmXo4hNiq9evXH3744SmlSy65ZN68ebUeh+3j1FNP/elPf/qmN73p/PPP\nr/UsbB/f+MY3LrzwwkKhcM8999R6FraP7u7u17zmNSmlT37yk4cddlitx2H7OO200+66666/\n/du/veiii2o4hpdiAQCCEHYAAEEIOwCAILzHrn6VSqVly5allF72spfNmPw1MNgAAAloSURB\nVDGj1uOwfaxYsWLt2rW77LLL3Llzaz0L28fq1asffPDBbDY78KZYAiiXyz/84Q9TSvvvv/9O\nO+1U63HYPu69996nnnpq55133m+//Wo4hrADAAjCS7EAAEEIOwCAIPyB4rpQ7X/m61df9V93\n//Lpnuwuu+35loUnv/7lz//ziWvuOevET9y/5ZqTvvDlN09rHMcx2QYjfrwqP7rp8m/fseLR\nDbmX7nvQcR3Hz27KjduQjNyGP/7Hu05Z9ryVxZYDlt54wfNWOlQnkc+fcmzj+Ve+Y8em51aM\n8Hh02E5cz3tMR/L0msb3sBV2deHWiz503a9aj31fxz6zWu77wY2Xf+zUnv/7hb/f7U/+3Hnn\nvZ1N04887cTN77jfvaU47pMyUiN8vB756tmX3Pw/C0/9wHum9f/nVZed9cH+6684OTOOczJC\nzTsceeaZB2+55ifXLn547hF//pUO1Umi+usfL/n66s63bfFG9hEejw7biWorj+lInl7T+B62\nwi6+cu+jV/73U4de9Km/nzstpbTn3vs99rNjvnnlyr//+IFbftkTD66fus8hhxzio5STw4ge\nr2rfopsfmrNw0dHzZ6eU5lyc3nbsJ298bOGCXYL/H+Qmo1zTXoccstfg4rpVNy3qmv3Zf97K\n/xLGoTrxPX7npWd/9q4n1vX+ydoRHo8O2wlpq4/pCJ9e0/gett5jF1+553d/OXv2m3ZvfW5F\n5uXtDX3rNj7vy365vnfay6eWN61//IlOn5Se+EbyePWuu+P3PeU3Hr7rwGLDtHkHTCn+fNma\ncRuS0amWNyw6b+mbz/rwDvmtXKZxqE58O+x/9JnnfuJTF5+x5coRHo8O24lpq4/pCJ9e0/ge\ntq7YxVdsn3fppZt/7y9tXHnt6o0vPnHO877sFxtLlR8vfvtnVpaq1XzLjq9fcNpJR+4/vpOy\nDUbyePV13ZdS2qd582E+tzl/6wPrxnVQtt0jX7/gNzPeet6+07a61aE68RXbXzSnPZX7/uQd\nVCM8Hh22E9NWH9MRPr2m8T1sXbGrL7/7+XfOPOXs/t3f9G9HzNpyfbnvj+syuek7HHzFDV/5\nynXXnvaWPb9z9dmfX9lZqzkZ3ggfr0pvV0ppRmHz265nFHKl9aVxnZVtVOl77OM3PnzUh/9h\nq1sdqpPXCI9Hh+0kNdTTaxr3w9YVu3rR+8zKaz/9me/+cu2hR5/y8QWHN2b+5CWeXHHW0qVL\nn1uaceg7z1x16zG3X/PAcZ969fiPygsa4eOVbWhOKa0tVWYWn/0V7qlSOT/NUT+hPXrLoo1T\nDj9q1tbfUOVQnbxGeDw6bCed4Z9e07gftq7Y1YUNv/3+P5/4kfuyB/z71Us++K7X/fmP3Z97\n5U5NpfVPjsNsbBdbfbwKzfullFZu2vy7/qpN/e1z28d1MrZN9Qtf+e2cdx018hs4VCeLER6P\nDtvJZRRPr2mMD1thF1+10v3xj1zR8Lp/vvyj73vJjK3/1ZzOVZed8N5T1/RVnrtNedlj3VP3\n2WurX0zNjfDxapx62Kxi7pa7nz19lDauWL6h7xWHbeVvLDFBdD/xlf/eWDrhNUM+Rg7VyWuE\nx6PDdhIZydNrGvfD1tXd+Lof/9KD3aUT9m/57+XLB1cWmvY8YG77I0uvW9bdfvy7j2zb/Zjp\n3Sefcd5VH3jn69oz3ctv/dIdXa0ffa9niwlq+Mdr8GFNmcLpR+/9r5/72O07f3jvqb3f/Myi\nlllHLNzVH02YuFbf8uNi66v2aHz+X6N1qEYw9PG4+Zgd9suYaIZ5ek21O2wz1arPywe3+ocf\nOfmSXz1vZfvu53zp0r+68/3vunTti75608Uppd5nfrXkyuvv+uWqnnzb7nP2fesJJ71qN6eS\niWuYx2vLhzVVy7d98dKbb/vZ0z2ZPQ449OTTT5zT7Ne5ietzxx9z94vP+Ny5r3jeeofqZFTu\n+8Nbj37/26+56Z92an521RDH458cs0N/GTX3vMd0mKfXVLvDVtgBAAThPXYAAEEIOwCAIIQd\nAEAQwg4AIAhhBwAQhLADAAhC2AEABCHsALaPS/aY1jz97/783wDjRtgBAAQh7AAAghB2AC+s\n0t9ZrvUMAC9I2AFs3ZKXTJ+2xyW9nT/7p9fuM6Vhh43lakppzU+//K43Hrzj1CnFlva9/mr+\n+Z//0Ui+VaX01GVnvmf/PWY2Fgpt03d73TEdP3mqZ2ynB+pSvtYDAExclf61x77sDU/PW3jR\n4o6mbObJ5Z/a69VnbGqYs+DYU3dv3XTnN7907vGH3fmbH912waHDf59L3/SyD/3g8cOOed/b\n3rvb+t8vv/Lqy+bf+ftn/viNQmZ89gOoF8IOYEgbHv145+Llt33gFSmllKofePO5m4ov+cGv\nl8+b2ZxSqlz40Q//9UsXXfSGO/913by24lDfpH/Tqn/9werd3rD0BzceNbDmqNa/ecuSu772\n1KZjdmwaj90A6oaXYgGGlmn44kkvG/jnpqe+9uUnul9y4pKBqkspZfMzzrrhuGql59zv/WG4\n75FtKmZS50NfW/7ohoE1B//7XU8++aSqA7Y7YQcwpOKUl+1UePY82fPMd1NKu7979pZfMGW3\nd6eUHrv18WG+Sa5ht+99YmH10Rv/+i+nzt7/kHe974NX3fS9tf3VMZsaqF/CDmBImWzLFktb\nSbFMJp9Sqr5Qpb3mw194YvWvbrjy4tfvv9N9t33+5He+YbfdDrntaZ+fALYzYQcwIo3TXp9S\n+u31v9ty5cY/fCmltPPrdh7mhqWN/++nP/3pH9rmvON9H7ryum/c/9u1D95yfvfjPznt7F+M\n5bxAPRJ2ACPSNOMfj9qxeeVVJ9zz5LNX2qr9az/xrmsy2YaP/t1uw9ywa80Vr3rVq97+fzZn\n3IsP/KuUUn9X/5gODNQhn4oFGKHsFd8+59a/Oeu1e7zy2BPeOnvKpmVfW/K9B585/KwfvG5q\nwzA3a3/xefN3/OwPLnjNmx45/lVzd690/u4b11ybK0z/2EUvH7fRgToh7ABGaqeDzly17C8+\neN6nv3btonV9+b/c58Dzlnz0o8e9dvhbZXLt37r/+2ecdu43/+v6267vapq2yyvmLVh67sX/\n8KIp4zI1UEcy1apPZgEAROA9dgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewA\nAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABDE/wfO55q5tHhssgAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "rolls <- replicate(10000,roll_two_dice())\n",
    "\n",
    "#Load library ggplot2\n",
    "library(ggplot2)\n",
    "\n",
    "ggplot2::qplot(rolls,binwidth=1)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9bcafa48",
   "metadata": {
    "papermill": {
     "duration": 0.006839,
     "end_time": "2023-08-14T19:14:07.548203",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.541364",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Question 3"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f49d90c",
   "metadata": {
    "papermill": {
     "duration": 0.006778,
     "end_time": "2023-08-14T19:14:07.561780",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.555002",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Are these dice fair? Why?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e6fa4e99",
   "metadata": {
    "papermill": {
     "duration": 0.006746,
     "end_time": "2023-08-14T19:14:07.576047",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.569301",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We answer this question by considering the sample space of this random experiment first.\n",
    "There are in total $6\\times6$ pairs, in total 36 ways to sum up points. \n",
    "Each pair has probability $1/36$ and since the multiple pairs do not occur in the same event\n",
    "the pair probabilities that lead to a particular sum can be added. \n",
    "The sample space $\\cal S$ could be visualized like this:"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ecb78978",
   "metadata": {
    "papermill": {
     "duration": 0.006744,
     "end_time": "2023-08-14T19:14:07.589611",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.582867",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "|    Probability     | Outcome | Possibilities                       |\n",
    "|:------------------:|:-------:|:------------------------------------|\n",
    "| P(sum = 2) = 1/36  |    2    | (1,1)                               |\n",
    "| P(sum = 3) = 2/36  |    3    | (1,2),(2,1)                         |\n",
    "| P(sum = 4) = 3/36  |    4    | (1,3),(2,2),(3,1)                   |\n",
    "| P(sum = 5) = 4/36  |    5    | (1,4),(2,3),(3,2),(4,1)             |\n",
    "| P(sum = 6) = 5/36  |    6    | (1,5),(2,4),(3,3),(4,2),(5,1)       |\n",
    "| P(sum = 7) = 6/36  |    7    | (1,6),(2,5),(3,4),(4,3),(5,2),(6,1) |\n",
    "| P(sum = 9) = 4/36  |    9    | (3,6),(4,5),(5,4),(6,3)             |\n",
    "| P(sum = 10) = 3/36 |   10    | (4,6),(5,5),(6,4)                   |\n",
    "| P(sum = 11) = 2/36 |   11    | (5,6),(6,5)                         |\n",
    "| P(sum = 12) = 1/36 |   12    | (6,6)                               |"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cebc9b3a",
   "metadata": {
    "papermill": {
     "duration": 0.0067,
     "end_time": "2023-08-14T19:14:07.603074",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.596374",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The frequencies with which the sums occur look very much like the theoretical probabilities for equally probable pairs. Our dice thus look as if they are fair. Fair here means that none of the two dice has a bias to land on any face more likely than on another. Of course this does not mean that all sums occur equally often, because there are for example more combinations that can result in a sum of 7 than there are combinations that can result in a sum of 12, say. If the dice are fair the frequencies will be proportional to the theoretical probabilities and for many independent throws of the dice they should get close to the theoretical probabilities"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "55162003",
   "metadata": {
    "papermill": {
     "duration": 0.006664,
     "end_time": "2023-08-14T19:14:07.616492",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.609828",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Question 4"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e314dff5",
   "metadata": {
    "papermill": {
     "duration": 0.00725,
     "end_time": "2023-08-14T19:14:07.630960",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.623710",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Assume the dice were unfair in the following sense: Numbers 1,2,3,4 and 5 have a probability of $1/8$while the 6 has a probability of $3/8$. Study the help page of the 'sample' function and find out how you could give these new probability weights to the function. If you redo your simulation analysis with the loaded dice, how does the picture change?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "1c7efd6f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-14T19:14:07.648535Z",
     "iopub.status.busy": "2023-08-14T19:14:07.646769Z",
     "iopub.status.idle": "2023-08-14T19:14:08.124084Z",
     "shell.execute_reply": "2023-08-14T19:14:08.121955Z"
    },
    "papermill": {
     "duration": 0.489064,
     "end_time": "2023-08-14T19:14:08.126863",
     "exception": false,
     "start_time": "2023-08-14T19:14:07.637799",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nO3de5xcdX3w8d9c957dXIBA4KlAoEC4eKFFaAOCUEVLW31QKjYGqgiIXfqSVmgB\nkYv4UG2g8KCgaETlZuOl2tIWhBoU0JqmChh4gqWt1EC4hE02m2R3dmaePxY2EbPLZs3u2f3O\n+/3XnnNmdr7nNXvOfHJmdpOr1+sJAIDpL5/1AAAA7BzCDgAgCGEHABCEsAMACELYAQAEIewA\nAIIQdgAAQQg7AIAgilkPMLE2bNhQrVZ39F6tra21Wm3Lli0TMdLUkcvlZsyYkVLq6+sbHBzM\nepyJVSqVmpube3t7sx5kwrW1tRWLxYGBgc2bN2c9y4SbMWNGX1/fOI7x6aVcLre0tNTr9Q0b\nNmQ9y4Qb2tPGOf1u2rSpUqlkPc7EKhaLLS0tjXD6bW1tLZVKlUpl06ZNE/1YM2fOHGlT8LCr\n1WrjPumHf7XI5XL5fD6lVK/Xw+9soVDI5/PhdzO99LTmcrlG2Nl8Pv+rHOPTRb1eHzpUw+9p\nSimXyzXCGWn49NsIP8CNdvpNWR+q3ooFAAhC2AEABCHsAACCEHYAAEEIOwCAIIQdAEAQwg4A\nIAhhBwAQhLADAAhC2AEABCHsAACCEHYAAEEIOwCAIIQdAEAQwg4AIAhhBwAQhLADAAhC2AEA\nBCHsAACCEHYAAEEIOwCAIIQdAEAQwg4AIAhhBwAQhLADAAhC2AEABCHsAACCEHYAAEEIOwCA\nIIQdAEAQwg4AIAhhBwAQhLADAAiimPUAAJOku7s76xHG79Zbb816BGAacMUOACAIYQcAEISw\nAwAIQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2\nAABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIO\nACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIOACCI4iQ/3hfOXtx82Q1/\nuEvL0OLaBy884+MPb3uDM2/+yltnNqeUUqp95/ZPfeu+lU/2Fg48+IjTuk/fu6Uw6noAgIY2\nmWFX/+n3ln59Tc876vXhVT0/6mmZfdK5ZywYXrNPW3noiye+etHVd/z3onM++MczB//+xusv\n/NDgLZ8+KzfyegCABjdJYff0d6+56DP3P7O+/2Xrn1m1oeugo446asHL71AfWHLHo/MXLTn5\n+L1TSvOvSu9Y/Inbnlp06tzS9tfv3jYp+wEAMHVN0mfsZh168gWXfPyTV53/svU/3tA/8zVd\n1c0bnn6mp77N+v719/1sS/XE4/YYWmyaufCw9vIPl68daf1k7AMAwNQ2SVfsyp17zu9M1YHm\nl63/942V2veufed1j1Xq9WLbLm869dwzTzo0pTTQ91BK6aDWreMtaC3e9cj6gYXbXz+8uGbN\nmlWrVg0vHnzwwW1tO3wxL5/P53K5pqamHb3j9JLLvfgOdqlUGv46qmKx2AjPaXrpac3n842w\nsymlUqlUKDTKp2wb4Tl1+o2ncU6/+Xw+pVQoFCZ6Z+v1+ihbJ/uXJ7ZVHfj5+lzhVbOOvOrW\nyzurG77/Dzf99Wcvatrvi6cd0FXr70spzSltPV/PKRUqGyojrR9eXLFixWWXXTa8+OUvf3nu\n3LnjG69cLo/vjtNOS0tL1iNMko6OjqxHmCSlUqlUKmU9xWQYx7/cpq/G+QF2+o2ncX56i8Xi\nRO9stVodZWuWf+6kUJ63bNmyT3b/wa5t5aYZc4551wUnzW6596ZHUkr5ptaU0rpKbfjGz1Wq\nxfbiSOsnfXYAgClnaiXR63ZtufeFZ1NKpdZDUlr+2ObK3PKL1zNXbx7sXNA50vrh7/DmN7/5\nDW94w/BitVp9/vnnd3SM9vb2er3e19f3q+zL1JfL5WbNmpVS6u3tHRgYyHqciVUul9va2l54\n4YWsB5lwM2bMKJVK/f39GzduzHqWCTdr1qwNGzYMDg5mPcgkGcfZbNpx+o2ncU6/HR0d5XJ5\nck6/s2fPHmlTlmHXs/r68/5q1ZWfum63cj6llOrV5U9t6nrt/iml5q5j55U/fecDz77hxD1T\nSpWNK1f0Dpx87Nzmrv+13fXD37NcLm97Db+np2f0t6JHUq/Xx3fH6agRdnZoB8Pv5rYaZGcb\n4ad3WIPsaaM9p+F31ul3kmX5VuyMfU6ZvWnt+ZfeuOKR1Y//5Ee3XfPh+/o63v++/VNKKVc6\n7+QDHv/cR+9duXrNEw/fdPGStnknLNqjbcT1AAANL8srdvninMuvv3TpDbf8zRV/uaU4Y5/5\nB59/zWWvaX/xE9/zT7niA/3X3Lrk4ue35PY97JjLzzsjN+p6AIAGN6lhVyjv+c1vfnPbNU0z\nF5z1F1eetd1b5wonLD7vhMVjXg8A0NiyfCsWAICdSNgBAAQh7AAAghB2AABBCDsAgCCEHQBA\nEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAI\nQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABB\nCDsAgCCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABBFLMeAADgRd3d3VmP8CtZ\nunRptgO4YgcAEISwAwAIQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAI\nQtgBAAQh7AAAghB2AABBCDsAgCCEHQBAEMIOACAIYQcAEISwAwAIQtgBAAQh7AAAghB2AABB\nCDsAgCCEHQBAEMIOACAIYQcAEEQx6wEAeGWnnnpq1iOM37XXXpv1CNAoXLEDAAhC2AEABCHs\nAACCEHYAAEEIOwCAIIQdAEAQwg4AIAhhBwAQhLADAAhC2AEABCHsAACCEHYAAEEIOwCAIIQd\nAEAQwg4AIAhhBwAQhLADAAhC2AEABCHsAACCEHYAAEEIOwCAIIQdAEAQwg4AIAhhBwAQhLAD\nAAhC2AEABCHsAACCEHYAAEEIOwCAIIQdAEAQwg4AIAhhBwAQhLADAAhC2AEABFHMegAAguvu\n7s56hHG69tprsx4BdowrdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACCL4nztpbW3N53c4\nXguFQr1eL5VKEzHSFNTW1tba2pr1FBMrl8vl8/murq6sB5lwhUIhpVQulxthZ3O5XEdHR71e\nz3oQwpro48jpN55JOP3WarVRtgYPu0qlMo6TfnNzc61WGxgYmIiRpo5cLlcsFlNKlUplcHAw\n63EmVrFYzOfzW7ZsyXqQCdfS0lIoFKrVaiPsbHt7+8DAQLVazXoQwpqg46ihTr+FQqG5ubkR\nzkhDJuH0W6/Xy+XySFvjh904jplSqVSr1cL/FOZyuba2tpTSwMBA+Iotl8vlcjn8c5pSampq\napywa2tr6+/vD/+6SIYmLuwa6vTb1NTUCGekIZNz+u3o6Bhpk8/YAQAEIewAAIIQdgAAQQg7\nAIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEH\nABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewA\nAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0A\nQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMA\nCELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAA\nQQg7AIAghB0AQBDFrAcAgCmqu7s76xHG79prr816BDLgih0AQBDCDgAgCGEHABCEsAMACELY\nAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7\nAIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEH\nABCEsAMACELYAQAEIewAAIIQdgAAQQg7AIAghB0AQBDCDgAgCGEHABCEsAMACELYAQAEIewA\nAIIQdgAAQQg7AIAghB0AQBDFSX68L5y9uPmyG/5wl5aXVtS+c/unvnXfyid7CwcefMRp3afv\n3VJ4pU2j3AUAoHFN5hW7+k+/9/mvr+kZrNeHVz3x1YuuvuPBI99+xiV/+p7W//j2hR/6bP2V\nNo1yFwCARjZJV+ye/u41F33m/mfW9//C2vrAkjsenb9oycnH751Smn9VesfiT9z21KJTd28b\ncdPc0oh3AQBobJN0xW7WoSdfcMnHP3nV+duu7F9/38+2VE88bo+hxaaZCw9rL/9w+dpRNo1y\nFwCABjdJV+zKnXvO70zVgeZtVw70PZRSOqh16wwLWot3PbJ+lE0DC0e8y5DHH3/8gQceGF48\n/vjju7q6dnTaQqGQz+dbWlpe+abTWS6XG/qiXC4XCsE/p1gsFnO5XPjnNKWUz+dTSoVCoRF2\nNqXU1NRUKpWyngKmoilyEmic0++QSTj91uujfQZtsn95Ylu1/r6U0pzS1qSYUypUNlRG2TTK\nXYY8+uij11133fDiEUccMW/evPGN1zivFs3Nza98oxDa2hrlLftisVgsZnl0T5rGebWAHTWl\nznhTapgJNQmn32q1OtoAE/rYo8s3taaU1lVqc8svviP8XKVanFkcZdModxlSKpVmzJix9SHy\n+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\n2RcN7vOWvzxh3rbrqwM/X58rzJ515Kdv/du//fLnz/29/f7hsxd94bGerOZkdGN8vmr9fSml\nOaWtH7ueUypUNlQmdVZ2UG3gqY/d9vjbP/wH293qUJ2+xng8OmynqZFeXtOkH7au2DWK/hce\n+/zfXPdPP153zMlnf+zU45pzv/AWT6E8b9myZS8tzTnmXResvuuUe2965LRP/vbkj8orGuPz\nlW9qTSmtq9Tmll/8J9xzlWpxpqN+SnvyziUb2497+7ztf6DKoTp9jfF4dNhOO6O/vKZJP2xd\nsWsIvf/57T854y8eyh/2V59d+qF3v/GXf+x+2et2balseHYSZmOn2O7zVWo9JKX02Oat/9Zf\nvXmwc0HnpE7Gjqnf/Lf/Of/dbx/7HRyq08UYj0eH7fQyjpfXNMGHrbCLr17b9LG/+HTTG//k\nUx95/6/P2f5fzelZff1733fO2oHaS/epLn9qU9dB+2/3xmRujM9Xc9ex88qFOx948fRR2bhy\nRe/Aa4/dzt9YYorY9Mzf/tvGynuPHvE5cqhOX2M8Hh2208hYXl7TpB+2ru7Gt+npL63aVHnv\noW3/tmLF8MpSy36HLeh8YtmXl2/qPP09J83Y55TZm846/9IbP/iuN3bmNq2460v39XV85H1e\nLaao0Z+v4ac15UrnnXzAn3/uo/fu9uEDuvr/7rolbfNOWLSHP5owda2583vljtfv2/zyv0br\nUI1g5ONx6zE76s2YakZ5eU3ZHba5et3vywe35l/+4qyrf/KylZ37XPyla37jux949zXr9vzq\n7VellPpf+MnSG265/8ertxRn7DP/4Le998zX7+VUMnWN8nxt+7SmevXuL15zx93/+vyW3L6H\nHXPWeWfMb/XPuanrc6ef8sCrzv/cJa992XqH6nRUHfift538gXfedPsf7dr64qoRjsdfOGZH\nvhmZe9lzOsrLa8rusBV2AABB+IwdAEAQwg4AIAhhBwAQhLADAAhC2AEABCHsAACCEHYAAEEI\nO4Cd4+p9Z7bO/t1f/hpg0gg7AIAghB0AQBDCDuCV1QZ7qlnPAPCKhB3A9i399dkz9726v+df\n/+gNB7U3zdpYraeU1v7gK+8+8chdutrLbZ37/8bxl33hO2P5VrXKc9df8MeH7ju3uVSaMXuv\nN57S/f3ntkzs9EBDKmY9AMDUVRtct/jVb35+4aIrr+1uyeeeXfHJ/X/7/M1N809dfM4+HZu/\n+3dfuuT0Y7/7H9+5+/JjRv8+17zl1X92z9PHnvL+d7xvrw0/W3HDZ68//rs/e+Hn3yjlJmc/\ngEYh7ABG1Pvkx3quXXH3B1+bUkqp/sG3XrK5/Ov3/HTFwrmtKaXaFR/58G8euOTKN3/3z9cv\nnFEe6ZsMbl795/es2evNy+657e1Da97e8Vu/t/T+rz23+ZRdWiZjN4CG4a1YgJHlmr545quH\nvtz83Ne+8symXz9j6VDVpZTyxTkX3npavbblkn/+n9G+R76lnEs9j35txZO9Q2uO/Kv7n332\nWVUH7HTCDmBE5fZX71p68Ty55YV/Sint8569t71B+17vSSk9ddfTo3yTQtNe//zxRfUnb/vN\nX+va+9Cj3v3+D914+z+vG6xP2NRA4xJ2ACPK5du2WdpOiuVyxZRS/ZUq7egP3/zMmp/cesNV\nbzp014fu/sJZ73rzXnsddffzfn8C2MmEHcCYNM98U0rpP2/5r21XbvyfL6WUdnvjbqPcsbLx\n//3gBz/4nxnz//D9f3bDl7/x8H+uW3XnZZue/v65F/37RM4LNCJhBzAmLXP+99t3aX3sxvc+\n+OyLV9rqg+s+/u6bcvmmj/zuXqPcsW/tp1//+te/8/9szbhXHf4bKaXBvsEJHRhoQH4rFmCM\n8p/+1sV3/daFb9j3dYvf+7a92zcv/9rSf171wnEX3vPGrqZR7tb5qkuP3+Uz91x+9FueOP31\nC/ap9fzXN276fKE0+6NXvmbSRgcahLADGKtdj7hg9fL/9aFL/+Zrn1+yfqD4awcdfunSj3zk\ntDeMfq9cofObD3/7/HMv+bt/vOXuW/paZu7+2oWnLrvkqj/Ys31SpgYaSK5e95tZAAAR+Iwd\nAEAQwg4AIAhhBwAQhLADAAhC2AEABCHsAACCEHYAAEEIOwCAIIQdAEAQwg4AIAhhBwAQhLAD\nAAhC2AEABPH/AZcStV7h5wYAAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "roll_biased <- function() {\n",
    "  \n",
    "  #Construct die\n",
    "  die <- 1:6\n",
    "  \n",
    "  #Roll biased or laded die by specifying the probabilities\n",
    "  dice <- sample(die, size=2,replace=TRUE,\n",
    "               prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))\n",
    "  \n",
    "  #sum\n",
    "  \n",
    "  sum(dice)\n",
    "}\n",
    "\n",
    "rolls <- replicate(10000, roll_biased())\n",
    "\n",
    "qplot(rolls, binwidth=1)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "490823c3",
   "metadata": {
    "papermill": {
     "duration": 0.007374,
     "end_time": "2023-08-14T19:14:08.142055",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.134681",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Question 5 "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bfd22b3c",
   "metadata": {
    "papermill": {
     "duration": 0.00737,
     "end_time": "2023-08-14T19:14:08.156840",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.149470",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Now look at the random experiment of throwing two dice with the concepts from probability theory: What is the sample space of this experiment. What are the probabilities of the basic outcomes? What is the probability of getting sum 7, what is the probability of getting sum 2?"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c43e348d",
   "metadata": {
    "papermill": {
     "duration": 0.007286,
     "end_time": "2023-08-14T19:14:08.171418",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.164132",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "$\\begin{equation}\\begin{aligned}{\\cal S} = & (1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (2,6), (3,6), (4,6), (5,6), (6,6),\\\\ & (2,1), (2,2), (2,3), (2,4), (2,5), (3,5), (4,5), (5,5), (6,5), (3,1), (3,2), \\\\ & (3,3), (3,4), (4,4), (5,4), (6,4), (4,1), (4,2), (4,3), (5,3), (6,3), (5,1), \\\\ & (5,2), (6,2), (6,1) \\}\\end{aligned}\\end{equation}$"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "33343b4c",
   "metadata": {
    "papermill": {
     "duration": 0.007191,
     "end_time": "2023-08-14T19:14:08.185925",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.178734",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The probabilities of the basic outcomes are $1/36$. The probability of getting the sum 7 is $6/36$ or $1/6$, the probability of getting a 2 is $1/36$."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fd32f2b5",
   "metadata": {
    "papermill": {
     "duration": 0.007268,
     "end_time": "2023-08-14T19:14:08.200642",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.193374",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Question 6"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "be764523",
   "metadata": {
    "papermill": {
     "duration": 0.007331,
     "end_time": "2023-08-14T19:14:08.215206",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.207875",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Imagine now that you are at the casino which uses fair dice and you can spend 150 Euro for chips. Since you have figured out that 7 is the most likely outcome you would like to buy bets on 7. The casino offers you a bet for 15 cent. When you win you get 1 Euro for the bet, when you loose the Casino gets the 15 cents. So you could make 1000 bets in total on 7. Is this a good or a bad deal for you? Try to think about this problem in terms of a simulation."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "7595e0b0",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-08-14T19:14:08.234653Z",
     "iopub.status.busy": "2023-08-14T19:14:08.232849Z",
     "iopub.status.idle": "2023-08-14T19:14:08.248107Z",
     "shell.execute_reply": "2023-08-14T19:14:08.246124Z"
    },
    "papermill": {
     "duration": 0.027818,
     "end_time": "2023-08-14T19:14:08.250873",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.223055",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "sim_craps <- function(n,cost) {\n",
    "  \n",
    "  #Create Outcome\n",
    "  outcome <- replicate(n,roll_two_dice())\n",
    "  #Expected revenue per game\n",
    "  exp_profit <- (mean((outcome==7))-cost)\n",
    "  \n",
    "  exp_profit\n",
    "}"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "27dae713",
   "metadata": {
    "papermill": {
     "duration": 0.007337,
     "end_time": "2023-08-14T19:14:08.265479",
     "exception": false,
     "start_time": "2023-08-14T19:14:08.258142",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The statement outcome == 7 is a logical comparison. If the outcome of the role is indeed 7 this evaluates to TRUE, otherwise to FALSE. When we combine such logical expressions in an arithmetic operation, such as mean() here R will coerce the logical value to a number replacing TRUE with 1 and FALSE with 0. When I write mean(outcome == 7), since the vector contains 1 or 0 it will return the proportion of 7 in the 1000 trials or the expected revenue per game. The cost in one game will always be 0.15.\n",
    "\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 6.282983,
   "end_time": "2023-08-14T19:14:08.395967",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-08-14T19:14:02.112984",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
