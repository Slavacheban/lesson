import {Component, OnInit, TemplateRef, ViewChild} from '@angular/core';

interface Course {
  id: number;
  name: string;
}

@Component({
  selector: 'app-course',
  templateUrl: './course.component.html',
  styleUrls: ['./course.component.css']
})
export class CourseComponent implements OnInit {

  public courseList: Course[];
  public dbColumns;
  @ViewChild('actionsTemplate') actionsTemplate: TemplateRef<any>;

  constructor() {
  }

  ngOnInit() {
    this.dbColumns = this.prepareDataTableColumns();
    this.courseList = [];
  }

  public prepareDataTableColumns(): any {
    return [
      {prop: 'id', name: 'ID'},
      {prop: 'name', name: 'Course'},
      {prop: 'startDate', name: 'Start'},
      {prop: 'finishDate', name: 'Finish'},
      {
        prop: 'actions',
        name: 'Actions',
        width: 200,
        canAutoResize: false,
        cellClass: 'actions-column',
        cellTemplate: this.actionsTemplate
      }
    ];
  }

  updateCourse(row) {

  }
}
