(declare-fun a_ack!4729 () (_ BitVec 32))
(declare-fun b_ack!4727 () (_ BitVec 32))
(declare-fun c_ack!4728 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!4729 #x00000000)))
(assert (not (bvslt b_ack!4727 a_ack!4729)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4728) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!4727))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4728) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4728) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4728)
                       ((_ to_fp 11 53) c_ack!4728))
               ((_ to_fp 11 53) c_ack!4728))
       ((_ to_fp 11 53) c_ack!4728)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4728)
                       ((_ to_fp 11 53) c_ack!4728))
               ((_ to_fp 11 53) c_ack!4728))
       ((_ to_fp 11 53) c_ack!4728)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4728)
                           ((_ to_fp 11 53) c_ack!4728))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4728)
                           ((_ to_fp 11 53) c_ack!4728))
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
                                   ((_ to_fp 11 53) c_ack!4728)
                                   ((_ to_fp 11 53) c_ack!4728))
                           ((_ to_fp 11 53) #x3d9d141fcb837472)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3e85d6b25be0bee4)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4728)
                                   ((_ to_fp 11 53) c_ack!4728))
                           a!1))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3eef47476772d4d9)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4728)
                                   ((_ to_fp 11 53) c_ack!4728))
                           a!2))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) c_ack!4728)
            ((_ to_fp 11 53) c_ack!4728))
    a!3)))))

(check-sat)
(exit)
