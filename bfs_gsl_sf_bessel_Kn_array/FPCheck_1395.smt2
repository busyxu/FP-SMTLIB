(declare-fun a_ack!5332 () (_ BitVec 32))
(declare-fun b_ack!5330 () (_ BitVec 32))
(declare-fun c_ack!5331 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!5332 #x00000000)))
(assert (not (bvslt b_ack!5330 a_ack!5332)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5331) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!5330))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5331) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5331) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5331))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5331)
                       ((_ to_fp 11 53) c_ack!5331))
               ((_ to_fp 11 53) c_ack!5331))
       ((_ to_fp 11 53) c_ack!5331)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!5331))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5331)
                       ((_ to_fp 11 53) c_ack!5331))
               ((_ to_fp 11 53) c_ack!5331))
       ((_ to_fp 11 53) c_ack!5331)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5331)
                           ((_ to_fp 11 53) c_ack!5331))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!5331)
                           ((_ to_fp 11 53) c_ack!5331))
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
                                   ((_ to_fp 11 53) c_ack!5331)
                                   ((_ to_fp 11 53) c_ack!5331))
                           ((_ to_fp 11 53) #x3d9d141fcb837472)))))
  (FPCHECK_FADD_UNDERFLOW
    #x3e85d6b25be0bee4
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5331)
                    ((_ to_fp 11 53) c_ack!5331))
            a!1))))

(check-sat)
(exit)
