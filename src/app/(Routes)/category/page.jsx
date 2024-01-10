import NewsList from '@/Components/News/NewsList';
import PopularList from '@/Components/News/PopularList';
import PlainLayout from '@/Components/master/PlainLayout';

async function getData(id){
  const catPosts = await (await fetch(`${process.env.BASE_URL}/api/news/category?catID=${id}`)).json()
  const popular = await (await fetch(`${process.env.BASE_URL}/api/news/type?type=Popular`)).json()
  const catName = await (await fetch(`${process.env.BASE_URL}/api/category/${id}`)).json()
  return {catPosts,popular, catName}
}

const category = async ({searchParams}) => {
  const id = searchParams.id;
  const {catPosts, popular, catName} = await getData(id)
  return (
    <PlainLayout>
      
      <div className="mt-5 container mx-auto">
        <h2 className="text-4xl mt-16 mb-2">Catogory:- <span className='text-themeColor font-bold'>{catName.data.name}</span></h2>
        <hr />
        <div className="flex gap-4">
          <div className="lg:w-3/4 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5 my-10 mx-auto">
            <NewsList latest={catPosts} />
          </div>
          <div className="w-1/4 lg:block hidden">
            <PopularList popularLists={popular}/>
          </div>
        </div>
      </div>
    </PlainLayout>
  )
}

export default category