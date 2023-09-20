(declare-fun b_ack!959 () (_ BitVec 64))
(declare-fun a_ack!960 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!959) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!960) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!959) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!959))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!959)
                       ((_ to_fp 11 53) b_ack!959))
               ((_ to_fp 11 53) b_ack!959))
       ((_ to_fp 11 53) b_ack!959)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!959))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!959)
                       ((_ to_fp 11 53) b_ack!959))
               ((_ to_fp 11 53) b_ack!959))
       ((_ to_fp 11 53) b_ack!959)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!959)
                          ((_ to_fp 11 53) b_ack!959))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!960)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!960) ((_ to_fp 11 53) #x4049000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!959) ((_ to_fp 11 53) #x408f400000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!959)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!959))
                           ((_ to_fp 11 53) b_ack!959))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!959)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!959))
                           ((_ to_fp 11 53) b_ack!959))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs a!4) ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!959)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!959))
                           ((_ to_fp 11 53) b_ack!959))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x2000000000000000)))))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!959)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4010000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!959))
                           ((_ to_fp 11 53) b_ack!959))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!960)
                                   ((_ to_fp 11 53) #x4000000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt (fp.abs a!4) ((_ to_fp 11 53) #x2000000000000000)))))))
(assert (FPCHECK_FADD_OVERFLOW a_ack!960 #x4000000000000000))

(check-sat)
(exit)
