(declare-fun b_ack!157 () (_ BitVec 64))
(declare-fun a_ack!158 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!158) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!157)
                       ((_ to_fp 11 53) a_ack!158)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!157) ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!157)
                       ((_ to_fp 11 53) a_ack!158)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!157)
                                   ((_ to_fp 11 53) a_ack!158)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!157)
                                   ((_ to_fp 11 53) a_ack!158))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4034000000000000)))
                   (fp.div roundNearestTiesToEven
                           a!1
                           ((_ to_fp 11 53) #x4034000000000000)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!157)
                                   ((_ to_fp 11 53) a_ack!158)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!157)
                                   ((_ to_fp 11 53) a_ack!158))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4034000000000000))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4034000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!157)
                                   ((_ to_fp 11 53) a_ack!158))))))
  (FPCHECK_FMUL_UNDERFLOW
    a!1
    (fp.abs (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!157)
                    ((_ to_fp 11 53) a_ack!158))))))

(check-sat)
(exit)
