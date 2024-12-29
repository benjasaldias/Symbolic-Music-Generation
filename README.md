# Symbolic-Music-Generation 🪄🎹
Generating symbolic music with a **Variational AutoEncoder** (VAE). The model is trained with a set of scales and melodic patterns presented by Nicolas Slonimsky in his _Thesaurus of Scales and Melodic Patterns_.

The project revolves around two main ideas:
* Generation of new scales and melodies.
* Interpolating between two scales through the latent space.

<br/><br/>
<h2>Dataset</h2>
Slonimsky's Thesaurus explores scales beyond their classical definition (Graue, 2024), including scales that span more than a single octave, also disregarding traditional concepts of harmony. These scales are created by dividing one or more octaves into equal parts, such as the tritonal progression, which divides the six tones of an octave into two intervals of three tones. These key notes are referred to as "principal tones".

Based on the principal tones, the thesaurus introduces variations on each progression by adding one to four notes between the intervals, classifying them as interpolation, ultrapolation, or infrapolation, depending on their organization and function within the scale.

* Interpolation: The added note must be located within the principal tone interval that surrounds it.
* Ultrapolation: The added note must be placed above the second note of the principal tone interval that surrounds it.
* Infrapolation: The added note must be placed below the first note of the principal tone interval that surrounds it.

![scale_composition](assets/principal_tones.png)

<br/><br/>
<h2>Generation</h2>
Create new scales through random inputs for the decoder.
<h3>Testing</h3>

To test our model on generating a single scale, you must simply run the `test.py` file in `VAE/Model`, which will decode a random `z` vector.

**EXAMPLE:**
>   example: python3 test.py

<br/><br/>
**Some of our results:**

z vector: [-0.0139, -1.2205, -1.4549,  1.5790, -0.5443, -0.4356,  0.9062,  1.4763, 0.9497,  0.1883, -0.4990, -0.5803]
![scale_example_0](assets/test_example_0.png)

z vector: [-0.5950,  0.3573,  1.1748, -0.3191, -0.0793, -0.6383, -3.7409, -1.8959, 2.5998,  2.3537,  2.8151, -0.5899]
![scale_example_1](assets/test_example_1.png)

z vector: [ 2.8456, -0.7268, -1.5758, -0.7938,  1.1789, -0.2523,  1.5746,  0.3569, 0.2824,  0.0894,  0.4205, -1.2200]
![scale_example_2](assets/test_example_2.png)

<h3>Metrics</h3>
To evaluate our results, we implemented the following metrics:


1.  **KL Divergence:** Measures how a probability distribution differs from another. In this case, it quantifies the difference between the approximate posterior distribution q(z|x) (learned by the encoder) and the prior distribution p(z).
   
2.  **Sparseness:** Sparseness looks at how "empty" or "dense" something is. In music generation, it measures how many notes are being played versus how much silence or empty space there is.
   
3.  **Coverage:** Coverage tells you how many unique notes are used in a musical piece. It checks if the generated music uses a wide variety of notes or sticks to only a small range.

4. **Symmetry:** Measures the how symmetric each generated scale is. As all metrics in our training set are perfectly symmetrical, this metric will indicate how well this characteristic of a musical scale was learned by the model.
   
5.  **Difference:** Returns 1 or 0 depending or whether the analyzed scale is in the training dataset.

After running these metrics over 500 generated data, these were the average results:

> KL Divergence: 8.0339
> 
> Sparseness: 0.0094
> 
> Coverage: 0.1671
> 
> Symmetry: 0.9997
> 
> Diff: 0.8898

The previous values prove the model to generate highly symmetrical and new scales. Knowing that the Thesaurus' Sparseness and Coverage values are 0.0094 and 0.1700, we can derive that the scales generated are as full and have lost almost no coverage compared to the training data. This assures that the generated data is significant and new.

<br/><br/>
<h2>Interpolation</h2>

We implemented linear interpolation as our main interpolation method, which has shown high efficiency and accuracy, making a smooth transition between the two scales by interpolating between the two `z` vectors in the model's latent space and decoding the resulting transition vectors.

The model's latent space has shown great interpolation results, that have been implemented and tested on two different ways:

1.  **over 2 scales:** returning the transition scales between one and another.
   
2.  **over 4 scales:** returning a grid of scales, having each of the four initial ones on each corner.

<h3>Testing</h3>

To run an interpolation between two `z` vectors, you must run the `interpolate.py` in `VAE/Interpolation`, which will ask to input the 2 vectors to interpolate over. If you wish for one (or both) of the vectors to be random, you must simply input "random" or "" (empty string).

**EXAMPLE:**
> python3 interpolate.py
> 
> Input your first vector of 16 dimensions (example: x1 x2 x3...): random
> 
> Input your second vector of 16 dimensions (example: x1 x2 x3...): -0.0139 -1.2205 -1.4549  1.5790 -0.5443 -0.4356  0.9062  1.4763 0.9497  0.1883 -0.4990 -0.5803

The results will be stored in the `VAE/Interpolation/results/1d` folder.


For a four scale interpolation, similar to the previous method, you must run `interpolate_2d.py` in the `VAE/Interpolation` folder. You will then be asked to input the 4 vectors to interpolate over. If you wish for any or all vectors to be random, you must simply input "random" or "" (empty string).

**EXAMPLE:**
> python3 interpolate_2d.py
> 
> Enter a vector (z1) in x1 x2 ... format (max 16 values): random
> 
> Enter another vector (z2): -0.0139 -1.2205 -1.4549  1.5790 -0.5443 -0.4356  0.9062  1.4763 0.9497  0.1883 -0.4990 -0.5803
>
> Enter another vector (z3): 
>
> Enter another vector (z4): random

The results will be stored in the `VAE/Interpolation/results/2d` folder.

<br/><br/>
The `interpolation_examples` folder contains 1d and 2d interpolations, with their respective pdf, lilypond and midi files. For 2d (or four scale) interpolations, we have included the diagonals of the interpolation grid to show the accuracy and smoothness of each transition of scales derived from the interpolation process.

<h3>Metrics</h3>
To evaluate our results, we implemented the following metrics:

1.  **Structural Similarity Index (SSIM):** Compares and returns the similarity between two images or matrices. It considers luminance, contrast, and structure, making it ideal for comparing visual or structured data. In this case, as the analyzed data is binary, the different values returned by this metric will be due to structural differences.
   
2.  **Local Binary Patterns (LBP):** LBP is a texture descriptor used to quantify patterns or structural differences in data. It’s often applied to assess variations in local features, making it suitable for capturing changes in scale matrices.

The  combination of these two metrics lets us analyze the smoothness in each interpolation result, calculating the SSIM and LBP of the two interpolated scales, and comparing it to the average metrics of each interpolation step. After running 200 random interpolations, we get the following average results:

> Average SSIM per step: 0.9268792917078141
> 
> Average start-finish SSIM: 0.6533462534381523
> 
> Average LBP per step: 4.2965221671182015
> 
> Average start-finish LBP: 10.67526086140364

Which proves an overall efficient and smooth transition on the interpolation results.
