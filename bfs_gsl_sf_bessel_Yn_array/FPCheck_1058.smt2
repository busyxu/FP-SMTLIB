(declare-fun a_ack!4879 () (_ BitVec 32))
(declare-fun b_ack!4877 () (_ BitVec 32))
(declare-fun c_ack!4878 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!4879 #x00000000)))
(assert (not (bvslt b_ack!4877 a_ack!4879)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4878) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!4879 #x00000000)))
(assert (not (= #x00000000 a_ack!4879)))
(assert (not (= #x00000001 a_ack!4879)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4878) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4878) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!4878))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!4879 a_ack!4879))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4879))
                           ((_ to_fp 11 53) c_ack!4878)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!4879))
                           ((_ to_fp 11 53) c_ack!4878)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4878)
                           ((_ to_fp 11 53) c_ack!4878)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2)
                 a!2)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4878)
                           ((_ to_fp 11 53) c_ack!4878)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2))
         a!2)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 a!2)
         a!3))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!2 a!3)
                 a!3)
         a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (not (fp.eq (fp.abs (fp.mul roundNearestTiesToEven a!2 a!3))
              ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!2 a!3)
                         ((_ to_fp 11 53) #x4008000000000000))
                 (fp.mul roundNearestTiesToEven a!2 a!3))
         ((_ to_fp 11 53) #x4008000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!2 a!3)
                         ((_ to_fp 11 53) #x4008000000000000))
                 ((_ to_fp 11 53) #x4008000000000000))
         (fp.mul roundNearestTiesToEven a!2 a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4020000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!3
         (fp.div roundNearestTiesToEven
                 a!2
                 ((_ to_fp 11 53) #x4020000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4020000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4020000000000000)))))
  (fp.eq a!3 ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!4879))
                   ((_ to_fp 11 53) c_ack!4878))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4878)
                                   ((_ to_fp 11 53) c_ack!4878))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.div roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x4020000000000000)))
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven a!2 a!3)
                    ((_ to_fp 11 53) #x4008000000000000))
            ((_ to_fp 11 53) #x4060000000000000))))))

(check-sat)
(exit)
