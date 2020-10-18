


int kadne(int arr){
	int sum_max = 0, current_usm = 0,s =0,end = 0;
	for(i =0;i<n;_++i){
		current_sum +=a[i];
		if(current_sum > sum_mx){
		sum_max = current_sum;
		start = s;
		end = i;
		}
		if(current_sum < 0){
			current_sum = 0;
			s++
		}

	}
	return (end-start+a)
}




mergeOverlapingSUb(vector<pair<int,int>>arr);
{
	sort(arr,arr+n);
	stack<pair<int,int>>s;
	s.push(arr[0]);
	for(int i =0;i< arr.size();++i){
		pair<int,int> t = s.top();
		if(t.first < t.second){
			s.push(arr[i]);
		}

		if(arr[i].second > t.second);
		{
			t.second = arr.second;
			s.pop();
			s.push(t);
		}
	}

	while(!s.empty()){
		cout<<t.first<<"  "<< t.second<<endl;
	}
}



void pasclaTriangle(int n){
	
	for(i = 1; i<= n;++i){
	    int c = 1;
		for(j = 1 ;j<=i ;++j){
			cot<<c<<" ";
			c = c* (n-1)/j;
		}
		cout<<"\n";
	}
}


int maxLenOf0Sum(int arr[]){
	unordered_map<int, int>presum;
	int max_len = 0;
	int sum = 0;
	for(i = 0; i<n;++i){
		sum+=arr[i];

		if(arr[i] == 0 && max_len == 0){
			max_len = 1;
		}

		if(sum == 0)
			max_len = i;

		if(presum.find(sum) != presum.end()){
			max_len = max(max_len, i-presum[sum]);
		}else{
			presum[sum] = i;
		}
	}
	return max_len;
}



int longestUniqueSubstring(string s){

	vector<int>lastIndex(256,-1);
	int i = 0;
	int res = 0;
	for(int j = 0;j<s.size();++j){

		i = max(i, lastIndex[s[i]] + 1);
		res = max(res,j-i+1);
		lastIndex[s[i]] = j;
	}

	return res; 
}


node* reverseLinkList(node* head){

	node* current = head;
	node* prev =NULL, next = NULL;

	while(current != NULL){
		next = current->next;
		current->next = prev;
		prev = current;
		current = next;
	}

	head = prev;
}




node* mergeTwoSortedLinkedList(node* list1, node* list2, node* sorting){

	node* new_head = NUL;

	if(list1 == NULL ){
		return list2;
	}
	if(list2 == NULL ){
		return list1;
	}

	if(list1 && list2){
		if(list1->data > list2->data){
			sorting = list2;
			list2 = sorting->next;

		}else{
			sorting = list1;
			list1 = sorting->next
		}
	}

	new_head = sorting;

	while(list1&& list2){
		if(lis1->data > list2->data){
			sorting-> next = list2;
			sorting = list2;
			list2=sorting->next;
		}else{
			sorting->next = list1;
			sorting = list1;
			list1 = sorting->
		}
	}
	if(list1 == NULL){
		sorting->next = list2;
	}
	if(list2 == NULL){
		sorting->next = list1;
	}
}


---------------------------------------------------------Merge sort of the link list --------------------------------------------------


node *findMid(node* head, node* tail){

	node* fs = head;
	node* sl = head;

	while(fs != tail && fs->next!= tail){
		fs = fs->next->next;
		sl = s->next;
	}
	return s;
}


node* mergeSort(node *head, node *tail){

	if(head == tail){
		return head;
	}
	node* mid = findMid(head,tail);
	node* fs = mergeSort(head, mid);
	node* sl = mergeSort(mid->next, tail);
	node* mergeTwoList = mergeTwoSortedLinkedList(fs,fs2);

	return mergeSort;

}



-----------------------------------------------------Delete form the end of the link list ------------------------------------------



node* deleteNode(node* head, ink k){

	node* first = head;
	node* second = head;

	for(int i = 0;i<k;++i){

		if(second->next != NULL){

			if( i == k-1){
				head = head->next; 
				return head;
			}
		}

		second = second->next;
	}

	while(second->next != NULL){
		first = first->next;
		second = second->next;
	}

	first->next= first->next->next;

	return head;

}

---------------------------------------------


node* inorder(node *root){

	stack<node*>s;

	node *curr = root;

	while(curr!=NULL && !s.empty()){

		while(curr!= NULL){
			curr = curr->left;
			s.push(curr);
		}

		curr = s.top();
		s.pop();
		cout<<curr->data<<" ";
		curr = curr->right;
	}

}


----------------------------------------------------------Left View Of binary -----------------------

void leftViewOfBinarytree(node *root, int &level, int &maxleve){

	if(root == NULL)
		return
	if(maxlevel < level){
		cout<<root->data<<" ";
		maxlevel = level;
	}

	leftViewOfBinarytree(root->left, level+1, maxlevel);
	leftViewOfBinarytree(root->right, level+1, maxlevel);
}

----------------------------------------------------------Right View Of binary -----------------------

void rightViewOfBinaryTree(node* root, int &level, int &maxlevel){


	if(root == NUll){
		return
	}

	if(maxlevel < level){
		cout<<root->data<< " ";
		maxlevel = level;
	}

	rightViewOfBinaryTree(root->right, level+1, maxlevel);
	rightViewOfBinaryTree(root->left, level+1, maxlevel);
}



--------------------------------------------N queens--------------------------------------------------------------------------------------------------




bool isSafe(int arr[][4], int row, int c){

	if(row< 0 && col < 0 && row> 3 && col> 3){
		return false;
	}
	//upper diagonal 
	for(int i = row , j = col; i>= 0 && j>=0 ; i--, j--){
		if(arr[i][j] == 1)
			false;
	}
	//lower diagonal 
	for(int i = row ,j = col ; i<N  && j> 0; ++i , --j){
		if(arr[i][j] == 1){
			false;
		}
	}
}


bool nqueenUtile(int arr[][N], int col){
	if(col >= N){
		return true;
	}


	for(i =0;i<n;++i){

		if(isSafe(arr,i,col)){
			arr[i][col] =1;
			if(nqueenUtile(arr, col+1)){
				return true
			}
			arr[i][col] =0;
		}
	}

	return false;
}

nqueenUtile(board,)



-----------------------------------Rate in Maze -----------------------------------------


bool solveMazeUtil( int maze[N][N], int x, int y, int sol[N][N]) 
{ 
    if ( x == N - 1 && y == N - 1 && maze[x][y] == 1) { 
        sol[x][y] = 1; 
        return true; 
    } 
  
    if (isSafe(maze, x, y) == true) { 
        sol[x][y] = 1; 
        if (solveMazeUtil( maze, x + 1, y, sol) == true) 
            return true; 
        if (solveMazeUtil( maze, x, y + 1, sol)== true) 
            return true; 
        sol[x][y] = 0; 
        return false; 
    } 
  
    return false; 
} 


----------------------------------- FInding lca of two nodes----------------



node* Lca(node* root){

		if(root == NULL){
			return NULL;
		}

		if(root->key == n1 || root->key == n2 ){
			return root;
		}

		node* left_lca = lca(root->left, n1,n2);
		node* right_lca = lca(root->right, n2, n1);

		if(left_lca  && right_lca){
			return root;
		}

		return (left_lca != NULL ? left_lca : right_lca)
}


--------------------------------------------------------bfs---------------------


def bfs(int vector<vector<>>g,int n){

	vector<int>vis;
	vis.resize(n,-1);

	queue<int> q;
	q.push(g[0][0]
		vis[0] = 0;

	while(!q.empty()){

		int f = q.front();

		for(int i =0;i<g[f].size();++i){
			if(vis[g[f][i]] == -1){
				q.push_back(g[f][i]);
				vis[g[f][i]] = 0; 
			}
		}

		q.pop();
	}


}


-----------------------------------------------height of binary tree -------------------------------------




int height(node* root){
	if(root == NULL){

		return 0;
	}

	int llength = height(root->left);
	int rlength = height(root->right);

	if(llength > rlength){
		return llength+1;
	}else{
		return rlength+1;
	}

}




map<string, pair<int,int>>m;


for(i =0;i<str.size();++i){

	if(map.find(str[i]) == m.end()){
		m.insert({a, {i,i}});
	}
	else{
		auto it = mp.find(a);
		if(it != mp.end()){
			it->second.second = i;
		}
	}
	vactor<string> ls;
	for(i =0; i<str.size();++i){

		auto it = ls.find(s[i]);
		int start = it->second.first;
		int end = it->second.second;
		string s;
		while(start<=end){
			s+=s[i];
			auto 
		}

	}
}

