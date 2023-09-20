(declare-fun b_ack!244 () (_ BitVec 64))
(declare-fun a_ack!245 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!245) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!245)
                                  ((_ to_fp 11 53) b_ack!244)))
                  ((_ to_fp 11 53) #x3f20000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!245)
                                   ((_ to_fp 11 53) b_ack!244)))
                   ((_ to_fp 11 53) #x3fe921fb54442d18))))
(let ((a!2 (bvand ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            (CF_floor a!1)
                            ((_ to_fp 11 53) #x7ff8000000000001)))
                  #x00000001)))
  (= #x00000000 a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!245)
                                   ((_ to_fp 11 53) b_ack!244)))
                   ((_ to_fp 11 53) #x3fe921fb54442d18))))
(let ((a!2 (bvslt #x00000003
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            (CF_floor a!1)
                            ((_ to_fp 11 53) #x7ff8000000000001))))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!245)
                                   ((_ to_fp 11 53) b_ack!244)))
                   ((_ to_fp 11 53) #x3fe921fb54442d18))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!245)
                                   ((_ to_fp 11 53) b_ack!244)))
                   (fp.mul roundNearestTiesToEven
                           (CF_floor a!1)
                           ((_ to_fp 11 53) #x3fe921fb40000000)))))
  (FPCHECK_FSUB_UNDERFLOW
    a!2
    (fp.mul roundNearestTiesToEven
            (CF_floor a!1)
            ((_ to_fp 11 53) #x3e64442d00000000))))))

(check-sat)
(exit)
