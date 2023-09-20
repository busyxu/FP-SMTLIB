(declare-fun b_ack!1430 () (_ BitVec 64))
(declare-fun a_ack!1432 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!1431 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1430) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!1432 #x00000000)))
(assert (not (= #x00000000 a_ack!1432)))
(assert (not (= #x00000001 a_ack!1432)))
(assert (not (= #x00000002 a_ack!1432)))
(assert (not (= #x00000003 a_ack!1432)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1430) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1430)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4018000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1430))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   a!1)
                           ((_ to_fp 11 53) c_ack!1431))
                   ((_ to_fp 11 53) c_ack!1431))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1430))
                           ((_ to_fp 11 53) c_ack!1431))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbff0000000000000)
                                   ((_ to_fp 11 53) b_ack!1430))
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4008000000000000))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs a!3))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1430)
                                   ((_ to_fp 11 53) c_ack!1431))))))
  (FPCHECK_FMUL_ACCURACY #x3cb0000000000000 a!4))))))

(check-sat)
(exit)
