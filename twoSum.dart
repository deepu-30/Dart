 void main(){
    
    Solution sol = Solution();
    
    List<int> nums = [2,7, 11, 15];
    var target = 9;
    
   // print("I'm here...");
    
    List <int> result = sol.twoSum(nums, target);
    
    print("Result: $result");
  }

class Solution {
  List<int> twoSum(List<int> nums, int target) {

    //in this first we need to take the array for two loops one loop for recursing 
    //2nd loop for adding the values and it'll go up to two sum will be 9
    //and it'll be checked in if condition
   // print("I'm inside function");
    //var sum=0;

//     for(int i=0; i< nums.length; ++i) {
//         for(int j=i+1; j< nums.length; ++j){
//           print("I'm here");
          
//             if((nums[i] + nums[j]) == target) {
                            
//                 print("$nums[i] & $nums[j]");
              
//               return [i, j];
                          
//             }
//         }
   // }
    
    
    //Last approach was traditional this is acc to dart as it uses the maps 
    
    Map <int, int> numMap = {};
    
    for(int i=0; i < nums.length; ++i) {
      int complement = target - nums[i];
      
      print (complement);
      if(numMap.containsKey(complement) ){
        
        print(numMap[complement]!);
        return [numMap[complement]!, i];
      }
      
      numMap[nums[i]] = i;
    }
    
    
   return [];
    
  }
}
