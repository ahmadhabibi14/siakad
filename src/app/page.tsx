import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"

export default function InputDemo() {
  return (
    <div className="flex justify-center min-h-screen">
      <div className="flex mt-11 w-96 p-5 bg-white rounded-md shadow h-fit flex-col gap-5">
        <h1 className="text-3xl font-bold">Login</h1>
        <div className="flex flex-col gap-3">
          <Input type="email" placeholder="Email" />
          <Input type="password" placeholder="Password" />
          <Button variant="default">Login</Button>
        </div>
      </div>
    </div>
  )
}
