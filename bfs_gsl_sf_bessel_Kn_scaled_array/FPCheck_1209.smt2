(declare-fun a_ack!4810 () (_ BitVec 32))
(declare-fun b_ack!4808 () (_ BitVec 32))
(declare-fun c_ack!4809 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!4810 #x00000000)))
(assert (not (bvslt b_ack!4808 a_ack!4810)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4809) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4808))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4809) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4809) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4809))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4809)
                       ((_ to_fp 11 53) c_ack!4809))
               ((_ to_fp 11 53) c_ack!4809))
       ((_ to_fp 11 53) c_ack!4809)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4809))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4809)
                       ((_ to_fp 11 53) c_ack!4809))
               ((_ to_fp 11 53) c_ack!4809))
       ((_ to_fp 11 53) c_ack!4809)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4809)
                           ((_ to_fp 11 53) c_ack!4809))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4809)
                           ((_ to_fp 11 53) c_ack!4809))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4809)
                                   ((_ to_fp 11 53) c_ack!4809))
                           ((_ to_fp 11 53) #x3d9d141fcb837472)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e85d6b25be0bee4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4809)
                                   ((_ to_fp 11 53) c_ack!4809))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3eef47476772d4d9)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4809)
                                   ((_ to_fp 11 53) c_ack!4809))
                           a!2))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f4bb90e85e098db)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4809)
                                   ((_ to_fp 11 53) c_ack!4809))
                           a!3))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f99dadb01454042)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4809)
                                   ((_ to_fp 11 53) c_ack!4809))
                           a!4))))
  (FPCHECK_FADD_OVERFLOW
    #x3fd1dadb014541ec
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!4809)
                    ((_ to_fp 11 53) c_ack!4809))
            a!5))))))))

(check-sat)
(exit)
