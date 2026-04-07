# 🧠 Memristor-Based 16×16 Crossbar Processor for Edge Detection

## 📌 Overview

This project implements a **memristor-inspired 16×16 crossbar processor** using Verilog in Xilinx Vivado. The design emulates memristive behavior to perform **parallel multiply-accumulate (MAC) operations**, enabling efficient execution of image processing tasks such as **Sobel edge detection**.

The system demonstrates how neuromorphic computing concepts can be mapped onto FPGA hardware using behavioral modeling.

---

## 🚀 Features

* 🔷 16×16 Crossbar Architecture (256 memristor cells)
* 🔷 Parallel Multiply-Accumulate (MAC) computation
* 🔷 Programmable weights (memristor behavior)
* 🔷 Sobel Edge Detection (Gx and Gy)
* 🔷 FPGA implementation using Vivado
* 🔷 Scalable and modular design

---

## 🏗️ Architecture

The system is divided into the following modules:

### 1. Memristor Module

* Stores programmable weight
* Performs multiplication:

  ```
  current = voltage × weight
  ```

### 2. Crossbar (16×16)

* 256 memristor cells
* Each row performs:

  ```
  Output = Σ (Input × Weight)
  ```

### 3. Processor

* Implements Sobel filter
* Computes:

  ```
  Gx (horizontal gradient)
  Gy (vertical gradient)
  Edge = |Gx| + |Gy|
  ```

---

## 🖼️ Edge Detection Concept

The Sobel operator uses convolution kernels:

**Gx Kernel:**

```
-1   0   +1
-2   0   +2
-1   0   +1
```

**Gy Kernel:**

```
-1  -2  -1
 0   0   0
+1  +2  +1
```

The processor applies these weights to pixel inputs to detect edges.

---

## ⚙️ Working Principle

1. **Programming Phase**

   * Memristors are assigned weights (Sobel kernel)

2. **Computation Phase**

   * Pixel values are applied as inputs
   * Crossbar computes weighted sum

3. **Output**

   * Edge intensity is calculated using:

     ```
     Edge = |Gx| + |Gy|
     ```

---

## 🧪 Simulation

* Tool: **Xilinx Vivado**
* Language: **Verilog HDL**
* Testbench included for:

  * Weight programming
  * Pixel input simulation
  * Output verification

---

## 📂 Project Structure

```
📁 memristor-crossbar-edge-detection
│── memristor.v
│── crossbar_16x16.v
│── processor_16x16.v
│── tb_processor.v
│── README.md
```

---

## ▶️ How to Run

1. Open **Vivado**
2. Create a new RTL project
3. Add all `.v` files
4. Set `tb_processor.v` as **Top Module**
5. Run:

   ```
   Run Simulation → Behavioral Simulation
   ```
6. Observe waveform/output

---

## 📊 Applications

* Edge detection in images
* Neuromorphic computing
* AI hardware acceleration
* Signal processing
* Computer vision systems (e.g., ANPR)

---

## 🔮 Future Work

* Full image processing using sliding window
* Real-time FPGA implementation
* Integration with camera modules
* CNN accelerator design
* Optimization using pipelining

---

## 🎯 Key Learning Outcomes

* FPGA-based hardware design
* Verilog modeling of memristive systems
* Parallel computing using crossbar architecture
* Image processing on hardware

---

## 👨‍💻 Author

**Rahul Raj**
B.Tech Electronics & Communication Engineering

---

## ⭐ Acknowledgment

This project is inspired by concepts in:

* Neuromorphic computing
* Memristor-based architectures
* Hardware acceleration for AI

---

## 📜 License

This project is open-source and available for academic and research purposes.
