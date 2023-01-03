import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { StudentsModule } from './students/students.module';
import { ClassesModule } from './classes/classes.module';
import { SchoolsModule } from './schools/schools.module';
import { LogsModule } from './logs/logs.module';
import { LessonsModule } from './lessons/lessons.module';
import { EventsModule } from './events/events.module';
import { InstructorsModule } from './instructors/instructors.module';
import { AddressesModule } from './addresses/addresses.module';

@Module({
  imports: [UsersModule, StudentsModule, ClassesModule, SchoolsModule, LogsModule, LessonsModule, EventsModule, InstructorsModule, AddressesModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
