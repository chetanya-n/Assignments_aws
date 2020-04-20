class Employee:
    def __init__(ab,name,id,age):
        ab.name = name
        ab.id = id
        ab.age = age


class Course:
    def __init__(ab,cid,cname,duration):
        ab.cid = cid
        ab.coursename = cname
        ab.duration = duration


class Trainee(Employee,Course):
    global d
    d={}
    global l
    l = []
    def __init__(ab,tid,course,dict):
        ab.tid = tid
        ab.course = course
        ab.dict = dict

    def add(ab,abc):
        l.append(abc.coursename)
        return abc.coursename
    def update(ab,abc,cname):
        abc.coursename = cname
        l.append(abc.coursename)
    def addstatus(ab,course,status):
        d[course] = status
    def display(ab):
        print(d)

t = Trainee("chetanya","python",{'big data':"complete"})
c = Course(1,"big data",85)
c2 = Course(2, "aws", 95)
c3 = Course(3, "python", 89)
c4 = Course(4, "DBMS", 89)
c5 = Course(5, "blokchain", 84)

t.update(c2,"ML")
t.addstatus(t.add(c4),"incomplete")
t.addstatus(t.add(c5),"complete")
t.display()
