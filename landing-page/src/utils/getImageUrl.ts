export const getImageURL = (url: string) => {
  return `${process.env.NEXT_PUBLIC_IMG_HOST}${url}`
}
