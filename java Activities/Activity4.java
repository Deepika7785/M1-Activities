public class Activity4 {
    public static void main(String[] args) {
        // Initialize the array with numbers in random order
        int[] array = {34, 7, 23, 32, 5, 62, 32};

        // Display the array before sorting
        System.out.println("Array before sorting:");
        printArray(array);

        // Sort the array using insertion sort
        insertionSort(array);

        // Display the array after sorting
        System.out.println("Array after sorting:");
        printArray(array);
    }

    // Insertion sort method
    public static void insertionSort(int[] arr) {
        int n = arr.length;
        for (int i = 1; i < n; i++) {
            int key = arr[i];
            int j = i - 1;
            
            // Move elements of arr[0..i-1], that are greater than key,
            // to one position ahead of their current position
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j--;
            }
            arr[j + 1] = key;
        }
    }

    // Method to print the array
    public static void printArray(int[] arr) {
        for (int num : arr) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}
