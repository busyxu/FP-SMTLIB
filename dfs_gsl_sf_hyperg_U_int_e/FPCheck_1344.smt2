(declare-fun c_ack!4196 () (_ BitVec 64))
(declare-fun b_ack!4195 () (_ BitVec 32))
(declare-fun a_ack!4197 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!4195)))
(assert (not (= #xffffffff (bvsub a_ack!4197 b_ack!4195))))
(assert (not (= #xfffffffe (bvsub a_ack!4197 b_ack!4195))))
(assert (not (= (bvsub #x00000002 b_ack!4195)
        (bvadd #x00000002 (bvsub a_ack!4197 b_ack!4195)))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195))))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fefae147ae147ae)
                          (fp.abs ((_ to_fp 11 53) c_ack!4196))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4014000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!4195) #x00000005))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4196) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.abs ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x4024000000000000))))
(assert (bvslt (bvsub #x00000002 b_ack!4195) #x0000000a))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4196) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)) #x00000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195))))))
  (not (fp.geq ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvsub #x00000002 b_ack!4195))
               (fp.add roundNearestTiesToEven a!1 ((_ to_fp 11 53) c_ack!4196))))))
(assert (not (fp.leq ((_ to_fp 11 53)
               roundNearestTiesToEven
               (bvsub #x00000002 b_ack!4195))
             ((_ to_fp 11 53) c_ack!4196))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs a!7) ((_ to_fp 11 53) #x5fefffffffffffff))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!6 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!7 (fp.mul roundNearestTiesToEven
                   a!6
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!5)
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!4 a!5)
                                    (fp.div roundNearestTiesToEven a!8 a!9))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!10 ((_ to_fp 11 53) #x3ce4000000000000)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
  (not (fp.gt (fp.abs a!10) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
  (not (fp.gt (fp.abs a!10) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!10 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4008000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!11 (fp.mul roundNearestTiesToEven
                    a!10
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4008000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!8)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!11 a!4)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!9)
                    (fp.mul roundNearestTiesToEven a!11 a!8))))
(let ((a!14 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!7 a!9)
                                    (fp.div roundNearestTiesToEven a!12 a!13))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!14 ((_ to_fp 11 53) #x3ce4000000000000))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
  (not (fp.gt (fp.abs a!13) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
  (not (fp.gt (fp.abs a!13) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!12 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!11)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!12)
                    (fp.mul roundNearestTiesToEven a!9 a!11))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!15 a!7)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!12))))
(let ((a!18 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!10 a!13)
                                    (fp.div roundNearestTiesToEven a!16 a!17))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!18 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
  (not (fp.gt (fp.abs a!16) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
  (not (fp.gt (fp.abs a!16) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!18 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!19 (fp.mul roundNearestTiesToEven
                    a!18
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!14)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!15)
                    (fp.mul roundNearestTiesToEven a!9 a!14))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!12 a!15))))
(let ((a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!19 a!10)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven a!19 a!16))))
(let ((a!22 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!13 a!17)
                                    (fp.div roundNearestTiesToEven a!20 a!21))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!22 ((_ to_fp 11 53) #x3ce4000000000000))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
  (not (fp.gt (fp.abs a!19) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
  (not (fp.gt (fp.abs a!19) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!22 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!17 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!23 (fp.mul roundNearestTiesToEven
                    a!22
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!17)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!18)
                    (fp.mul roundNearestTiesToEven a!9 a!17))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!12 a!18))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!20)
                    (fp.mul roundNearestTiesToEven a!15 a!19))))
(let ((a!24 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!23 a!13)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven a!23 a!20))))
(let ((a!26 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!16 a!21)
                                    (fp.div roundNearestTiesToEven a!24 a!25))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!26 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
  (not (fp.gt (fp.abs a!22) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
  (not (fp.gt (fp.abs a!22) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!20 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!21 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!20)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!21)
                    (fp.mul roundNearestTiesToEven a!9 a!20))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!12 a!21))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!23)
                    (fp.mul roundNearestTiesToEven a!15 a!22))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!24)
                    (fp.mul roundNearestTiesToEven a!18 a!23))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!27 a!16)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!24))))
(let ((a!30 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!19 a!25)
                                    (fp.div roundNearestTiesToEven a!28 a!29))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!30 ((_ to_fp 11 53) #x3ce4000000000000))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
  (not (fp.gt (fp.abs a!25) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
  (not (fp.gt (fp.abs a!25) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!30 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!23 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!31 (fp.mul roundNearestTiesToEven
                    a!30
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!24 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!23)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!24)
                    (fp.mul roundNearestTiesToEven a!9 a!23))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!12 a!24))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!26)
                    (fp.mul roundNearestTiesToEven a!15 a!25))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!27)
                    (fp.mul roundNearestTiesToEven a!18 a!26))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!21 a!27))))
(let ((a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!31 a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!29)
                    (fp.mul roundNearestTiesToEven a!31 a!28))))
(let ((a!34 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!22 a!29)
                                    (fp.div roundNearestTiesToEven a!32 a!33))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!34 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
  (not (fp.gt (fp.abs a!28) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
  (not (fp.gt (fp.abs a!28) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!34 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!26 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!35 (fp.mul roundNearestTiesToEven
                    a!34
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!26)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!27)
                    (fp.mul roundNearestTiesToEven a!9 a!26))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!12 a!27))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!29)
                    (fp.mul roundNearestTiesToEven a!15 a!28))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!30)
                    (fp.mul roundNearestTiesToEven a!18 a!29))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!21 a!30))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!32)
                    (fp.mul roundNearestTiesToEven a!24 a!31))))
(let ((a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!35 a!22)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!33)
                    (fp.mul roundNearestTiesToEven a!35 a!32))))
(let ((a!38 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!25 a!33)
                                    (fp.div roundNearestTiesToEven a!36 a!37))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!38 ((_ to_fp 11 53) #x3ce4000000000000))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
  (not (fp.gt (fp.abs a!31) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
  (not (fp.gt (fp.abs a!31) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!30 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!29)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!30)
                    (fp.mul roundNearestTiesToEven a!9 a!29))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!12 a!30))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!32)
                    (fp.mul roundNearestTiesToEven a!15 a!31))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!33)
                    (fp.mul roundNearestTiesToEven a!18 a!32))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!21 a!33))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!35)
                    (fp.mul roundNearestTiesToEven a!24 a!34))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!36)
                    (fp.mul roundNearestTiesToEven a!27 a!35))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!39 a!25)))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!36))))
(let ((a!42 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!28 a!37)
                                    (fp.div roundNearestTiesToEven a!40 a!41))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!42 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
  (not (fp.gt (fp.abs a!34) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
  (not (fp.gt (fp.abs a!34) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!42 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!43 (fp.mul roundNearestTiesToEven
                    a!42
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!33 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!32)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!33)
                    (fp.mul roundNearestTiesToEven a!9 a!32))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!12 a!33))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!35)
                    (fp.mul roundNearestTiesToEven a!15 a!34))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!36)
                    (fp.mul roundNearestTiesToEven a!18 a!35))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!38 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!21 a!36))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!38)
                    (fp.mul roundNearestTiesToEven a!24 a!37))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!39)
                    (fp.mul roundNearestTiesToEven a!27 a!38))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!30 a!39))))
(let ((a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!43 a!28)))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!41)
                    (fp.mul roundNearestTiesToEven a!43 a!40))))
(let ((a!46 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!31 a!41)
                                    (fp.div roundNearestTiesToEven a!44 a!45))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!46 ((_ to_fp 11 53) #x3ce4000000000000))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
  (not (fp.gt (fp.abs a!37) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
  (not (fp.gt (fp.abs a!37) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!46 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!35 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!47 (fp.mul roundNearestTiesToEven
                    a!46
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!35)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!36)
                    (fp.mul roundNearestTiesToEven a!9 a!35))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!38 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!12 a!36))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!38)
                    (fp.mul roundNearestTiesToEven a!15 a!37))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!39)
                    (fp.mul roundNearestTiesToEven a!18 a!38))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!21 a!39))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!42 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!41)
                    (fp.mul roundNearestTiesToEven a!24 a!40))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!42)
                    (fp.mul roundNearestTiesToEven a!27 a!41))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!30 a!42))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!44)
                    (fp.mul roundNearestTiesToEven a!33 a!43))))
(let ((a!48 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!47 a!31)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!45)
                    (fp.mul roundNearestTiesToEven a!47 a!44))))
(let ((a!50 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!34 a!45)
                                    (fp.div roundNearestTiesToEven a!48 a!49))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!50 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
  (not (fp.gt (fp.abs a!40) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
  (not (fp.gt (fp.abs a!40) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!38 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!38)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!39)
                    (fp.mul roundNearestTiesToEven a!9 a!38))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!12 a!39))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!42 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!41)
                    (fp.mul roundNearestTiesToEven a!15 a!40))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!42)
                    (fp.mul roundNearestTiesToEven a!18 a!41))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!21 a!42))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!44)
                    (fp.mul roundNearestTiesToEven a!24 a!43))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!45)
                    (fp.mul roundNearestTiesToEven a!27 a!44))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!30 a!45))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!48 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!47)
                    (fp.mul roundNearestTiesToEven a!33 a!46))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!48)
                    (fp.mul roundNearestTiesToEven a!36 a!47))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!51 a!34)))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!48))))
(let ((a!54 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!37 a!49)
                                    (fp.div roundNearestTiesToEven a!52 a!53))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!54 ((_ to_fp 11 53) #x3ce4000000000000))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
  (not (fp.gt (fp.abs a!43) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
  (not (fp.gt (fp.abs a!43) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!54 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!41 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!55 (fp.mul roundNearestTiesToEven
                    a!54
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!42 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!41)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!42)
                    (fp.mul roundNearestTiesToEven a!9 a!41))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!12 a!42))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!44)
                    (fp.mul roundNearestTiesToEven a!15 a!43))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!45)
                    (fp.mul roundNearestTiesToEven a!18 a!44))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!21 a!45))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!48 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!47)
                    (fp.mul roundNearestTiesToEven a!24 a!46))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!48)
                    (fp.mul roundNearestTiesToEven a!27 a!47))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!30 a!48))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!50)
                    (fp.mul roundNearestTiesToEven a!33 a!49))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31)))
      (a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!51)
                    (fp.mul roundNearestTiesToEven a!36 a!50))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34)))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!39 a!51))))
(let ((a!56 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!55 a!37)))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!53)
                    (fp.mul roundNearestTiesToEven a!55 a!52))))
(let ((a!58 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!40 a!53)
                                    (fp.div roundNearestTiesToEven a!56 a!57))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!58 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
  (not (fp.gt (fp.abs a!46) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
  (not (fp.gt (fp.abs a!46) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!58 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!59 (fp.mul roundNearestTiesToEven
                    a!58
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!45 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!44)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!45)
                    (fp.mul roundNearestTiesToEven a!9 a!44))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!12 a!45))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!48 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!47)
                    (fp.mul roundNearestTiesToEven a!15 a!46))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!48)
                    (fp.mul roundNearestTiesToEven a!18 a!47))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!21 a!48))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!50)
                    (fp.mul roundNearestTiesToEven a!24 a!49))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!51)
                    (fp.mul roundNearestTiesToEven a!27 a!50))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!30 a!51))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!53)
                    (fp.mul roundNearestTiesToEven a!33 a!52))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31)))
      (a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!54)
                    (fp.mul roundNearestTiesToEven a!36 a!53))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34)))
      (a!56 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!55)
                    (fp.mul roundNearestTiesToEven a!39 a!54))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37)))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!56)
                    (fp.mul roundNearestTiesToEven a!42 a!55))))
(let ((a!60 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!59 a!40)))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!57)
                    (fp.mul roundNearestTiesToEven a!59 a!56))))
(let ((a!62 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!43 a!57)
                                    (fp.div roundNearestTiesToEven a!60 a!61))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!62 ((_ to_fp 11 53) #x3ce4000000000000))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
  (not (fp.gt (fp.abs a!49) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
  (not (fp.gt (fp.abs a!49) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!62 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!63 (fp.mul roundNearestTiesToEven
                    a!62
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!48 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!47)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!48)
                    (fp.mul roundNearestTiesToEven a!9 a!47))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!12 a!48))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!50)
                    (fp.mul roundNearestTiesToEven a!15 a!49))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!51)
                    (fp.mul roundNearestTiesToEven a!18 a!50))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!21 a!51))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!53)
                    (fp.mul roundNearestTiesToEven a!24 a!52))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!54)
                    (fp.mul roundNearestTiesToEven a!27 a!53))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!56 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!55)
                    (fp.mul roundNearestTiesToEven a!30 a!54))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!56)
                    (fp.mul roundNearestTiesToEven a!33 a!55))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31)))
      (a!58 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!57)
                    (fp.mul roundNearestTiesToEven a!36 a!56))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34)))
      (a!59 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!58)
                    (fp.mul roundNearestTiesToEven a!39 a!57))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37)))
      (a!60 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!59)
                    (fp.mul roundNearestTiesToEven a!42 a!58))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40)))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!60)
                    (fp.mul roundNearestTiesToEven a!45 a!59))))
(let ((a!64 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!63 a!43)))
      (a!65 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!61)
                    (fp.mul roundNearestTiesToEven a!63 a!60))))
(let ((a!66 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!46 a!61)
                                    (fp.div roundNearestTiesToEven a!64 a!65))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!66 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46))))
  (not (fp.gt (fp.abs a!52) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46))))
  (not (fp.gt (fp.abs a!52) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!66 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!67 (fp.mul roundNearestTiesToEven
                    a!66
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!51 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!50)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!51)
                    (fp.mul roundNearestTiesToEven a!9 a!50))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!12 a!51))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!53)
                    (fp.mul roundNearestTiesToEven a!15 a!52))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!54)
                    (fp.mul roundNearestTiesToEven a!18 a!53))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!56 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!55)
                    (fp.mul roundNearestTiesToEven a!21 a!54))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!56)
                    (fp.mul roundNearestTiesToEven a!24 a!55))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!58 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!57)
                    (fp.mul roundNearestTiesToEven a!27 a!56))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!59 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!58)
                    (fp.mul roundNearestTiesToEven a!30 a!57))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!60 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!59)
                    (fp.mul roundNearestTiesToEven a!33 a!58))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31)))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!60)
                    (fp.mul roundNearestTiesToEven a!36 a!59))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34)))
      (a!62 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!61)
                    (fp.mul roundNearestTiesToEven a!39 a!60))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37)))
      (a!63 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!62)
                    (fp.mul roundNearestTiesToEven a!42 a!61))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40)))
      (a!64 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!63)
                    (fp.mul roundNearestTiesToEven a!45 a!62))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43)))
      (a!65 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!64)
                    (fp.mul roundNearestTiesToEven a!48 a!63))))
(let ((a!68 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!67 a!46)))
      (a!69 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!65)
                    (fp.mul roundNearestTiesToEven a!67 a!64))))
(let ((a!70 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!49 a!65)
                                    (fp.div roundNearestTiesToEven a!68 a!69))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!70 ((_ to_fp 11 53) #x3ce4000000000000))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!53 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!54 (fp.mul roundNearestTiesToEven
                    a!53
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46))))
(let ((a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!54 a!49))))
  (not (fp.gt (fp.abs a!55) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!53 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!54 (fp.mul roundNearestTiesToEven
                    a!53
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46))))
(let ((a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!54 a!49))))
  (not (fp.gt (fp.abs a!55) ((_ to_fp 11 53) #x5fefffffffffffff))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!70 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!53 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!71 (fp.mul roundNearestTiesToEven
                    a!70
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!54 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!53)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!54)
                    (fp.mul roundNearestTiesToEven a!9 a!53))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!56 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!55)
                    (fp.mul roundNearestTiesToEven a!12 a!54))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!56)
                    (fp.mul roundNearestTiesToEven a!15 a!55))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!58 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!57)
                    (fp.mul roundNearestTiesToEven a!18 a!56))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!59 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!58)
                    (fp.mul roundNearestTiesToEven a!21 a!57))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!60 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!59)
                    (fp.mul roundNearestTiesToEven a!24 a!58))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!60)
                    (fp.mul roundNearestTiesToEven a!27 a!59))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!62 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!61)
                    (fp.mul roundNearestTiesToEven a!30 a!60))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!63 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!62)
                    (fp.mul roundNearestTiesToEven a!33 a!61))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31)))
      (a!64 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!63)
                    (fp.mul roundNearestTiesToEven a!36 a!62))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34)))
      (a!65 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!64)
                    (fp.mul roundNearestTiesToEven a!39 a!63))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37)))
      (a!66 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!65)
                    (fp.mul roundNearestTiesToEven a!42 a!64))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40)))
      (a!67 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!66)
                    (fp.mul roundNearestTiesToEven a!45 a!65))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43)))
      (a!68 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!67)
                    (fp.mul roundNearestTiesToEven a!48 a!66))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46)))
      (a!69 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!68)
                    (fp.mul roundNearestTiesToEven a!51 a!67))))
(let ((a!72 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!71 a!49)))
      (a!73 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!69)
                    (fp.mul roundNearestTiesToEven a!71 a!68))))
(let ((a!74 (fp.abs (fp.sub roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    (fp.div roundNearestTiesToEven a!52 a!69)
                                    (fp.div roundNearestTiesToEven a!72 a!73))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!74 ((_ to_fp 11 53) #x3ce4000000000000)))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!53 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!56 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4033000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!54 (fp.mul roundNearestTiesToEven
                    a!53
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!57 (fp.mul roundNearestTiesToEven
                    a!56
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4033000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46))))
(let ((a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!54 a!49))))
(let ((a!58 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4043000000000000))
                            a!55)
                    (fp.mul roundNearestTiesToEven a!57 a!52))))
  (not (fp.gt (fp.abs a!58) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!53 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!56 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4033000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!54 (fp.mul roundNearestTiesToEven
                    a!53
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!57 (fp.mul roundNearestTiesToEven
                    a!56
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4033000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46))))
(let ((a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!54 a!49))))
(let ((a!58 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4043000000000000))
                            a!55)
                    (fp.mul roundNearestTiesToEven a!57 a!52))))
  (not (fp.gt (fp.abs a!58) ((_ to_fp 11 53) #x5fefffffffffffff)))))))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvsub a_ack!4197 b_ack!4195)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195))
                           a!1)
                   ((_ to_fp 11 53) c_ack!4196)))
      (a!5 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!8 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x8000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #x00000002 b_ack!4195)))))
      (a!11 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!14 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!17 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!20 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!23 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!26 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!29 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!32 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!35 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!38 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!41 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!44 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!47 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!50 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!53 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195)))))
      (a!74 (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4033000000000000))
                            ((_ to_fp 11 53)
                              roundNearestTiesToEven
                              (bvsub #x00000002 b_ack!4195))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   a!3)
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!6 (fp.mul roundNearestTiesToEven
                   a!5
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!9 (fp.mul roundNearestTiesToEven
                   a!8
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4008000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!12 (fp.mul roundNearestTiesToEven
                    a!11
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4010000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!15 (fp.mul roundNearestTiesToEven
                    a!14
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4014000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!18 (fp.mul roundNearestTiesToEven
                    a!17
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4018000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!21 (fp.mul roundNearestTiesToEven
                    a!20
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x401c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!24 (fp.mul roundNearestTiesToEven
                    a!23
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4020000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!27 (fp.mul roundNearestTiesToEven
                    a!26
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4022000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!30 (fp.mul roundNearestTiesToEven
                    a!29
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4024000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!33 (fp.mul roundNearestTiesToEven
                    a!32
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4026000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!36 (fp.mul roundNearestTiesToEven
                    a!35
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4028000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!39 (fp.mul roundNearestTiesToEven
                    a!38
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402a000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!42 (fp.mul roundNearestTiesToEven
                    a!41
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402c000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!45 (fp.mul roundNearestTiesToEven
                    a!44
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x402e000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!48 (fp.mul roundNearestTiesToEven
                    a!47
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4030000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!51 (fp.mul roundNearestTiesToEven
                    a!50
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4031000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!54 (fp.mul roundNearestTiesToEven
                    a!53
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4032000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!56 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4000000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000))
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x8000000000000000)
                                    a!3)
                            ((_ to_fp 11 53) #x0000000000000000))))
      (a!75 (fp.mul roundNearestTiesToEven
                    a!74
                    (fp.sub roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #x4033000000000000))
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4010000000000000))
                           a!4)
                   (fp.mul roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!57 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4010000000000000))
                            a!56)
                    (fp.mul roundNearestTiesToEven
                            a!6
                            ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!7)
                    (fp.mul roundNearestTiesToEven a!9 a!4)))
      (a!58 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4018000000000000))
                            a!57)
                    (fp.mul roundNearestTiesToEven a!9 a!56))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!10)
                    (fp.mul roundNearestTiesToEven a!12 a!7)))
      (a!59 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4020000000000000))
                            a!58)
                    (fp.mul roundNearestTiesToEven a!12 a!57))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!13)
                    (fp.mul roundNearestTiesToEven a!15 a!10)))
      (a!60 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4024000000000000))
                            a!59)
                    (fp.mul roundNearestTiesToEven a!15 a!58))))
(let ((a!19 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!16)
                    (fp.mul roundNearestTiesToEven a!18 a!13)))
      (a!61 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4028000000000000))
                            a!60)
                    (fp.mul roundNearestTiesToEven a!18 a!59))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!19)
                    (fp.mul roundNearestTiesToEven a!21 a!16)))
      (a!62 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x402c000000000000))
                            a!61)
                    (fp.mul roundNearestTiesToEven a!21 a!60))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!22)
                    (fp.mul roundNearestTiesToEven a!24 a!19)))
      (a!63 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4030000000000000))
                            a!62)
                    (fp.mul roundNearestTiesToEven a!24 a!61))))
(let ((a!28 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!25)
                    (fp.mul roundNearestTiesToEven a!27 a!22)))
      (a!64 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4032000000000000))
                            a!63)
                    (fp.mul roundNearestTiesToEven a!27 a!62))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!28)
                    (fp.mul roundNearestTiesToEven a!30 a!25)))
      (a!65 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4034000000000000))
                            a!64)
                    (fp.mul roundNearestTiesToEven a!30 a!63))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!31)
                    (fp.mul roundNearestTiesToEven a!33 a!28)))
      (a!66 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4036000000000000))
                            a!65)
                    (fp.mul roundNearestTiesToEven a!33 a!64))))
(let ((a!37 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!34)
                    (fp.mul roundNearestTiesToEven a!36 a!31)))
      (a!67 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4038000000000000))
                            a!66)
                    (fp.mul roundNearestTiesToEven a!36 a!65))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!37)
                    (fp.mul roundNearestTiesToEven a!39 a!34)))
      (a!68 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403a000000000000))
                            a!67)
                    (fp.mul roundNearestTiesToEven a!39 a!66))))
(let ((a!43 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!40)
                    (fp.mul roundNearestTiesToEven a!42 a!37)))
      (a!69 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403c000000000000))
                            a!68)
                    (fp.mul roundNearestTiesToEven a!42 a!67))))
(let ((a!46 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!43)
                    (fp.mul roundNearestTiesToEven a!45 a!40)))
      (a!70 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x403e000000000000))
                            a!69)
                    (fp.mul roundNearestTiesToEven a!45 a!68))))
(let ((a!49 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!46)
                    (fp.mul roundNearestTiesToEven a!48 a!43)))
      (a!71 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4040000000000000))
                            a!70)
                    (fp.mul roundNearestTiesToEven a!48 a!69))))
(let ((a!52 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!49)
                    (fp.mul roundNearestTiesToEven a!51 a!46)))
      (a!72 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4041000000000000))
                            a!71)
                    (fp.mul roundNearestTiesToEven a!51 a!70))))
(let ((a!55 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!52)
                    (fp.mul roundNearestTiesToEven a!54 a!49)))
      (a!73 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4042000000000000))
                            a!72)
                    (fp.mul roundNearestTiesToEven a!54 a!71))))
(let ((a!76 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4043000000000000))
                            a!55)
                    (fp.mul roundNearestTiesToEven a!75 a!52)))
      (a!77 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!2
                                    ((_ to_fp 11 53) #x4043000000000000))
                            a!73)
                    (fp.mul roundNearestTiesToEven a!75 a!72))))
  (FPCHECK_FDIV_INVALID
    (fp.div roundNearestTiesToEven a!55 a!73)
    (fp.div roundNearestTiesToEven a!76 a!77))))))))))))))))))))))))

(check-sat)
(exit)
