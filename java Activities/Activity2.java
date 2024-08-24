public class Activity2 {
    public static void main(String[] args) {
        // Initialize the array with 6 numbers
        int[] numbers = {10, 77, 10, 54, -11, 10};
        
        // Call the method to check if the sum of 10s is exactly 30
        boolean result = isSumOfTensExactly30(numbers);
        
        // Print the result
        System.out.println(result);
    }

    // Method to check if the sum of all 10's in the array is exactly 30
    public static boolean isSumOfTensExactly30(int[] arr) {
        int sum = 0;
        
        // Traverse the array
        for (int num : arr) {
            if (num == 10) {
                sum += num; // Add 10 to the sum
            }
        }
        
        // Return true if the sum is exactly 30, otherwise false
        return sum == 30;
    }
}
