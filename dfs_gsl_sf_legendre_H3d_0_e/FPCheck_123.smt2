(declare-fun b_ack!559 () (_ BitVec 64))
(declare-fun a_ack!560 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!559) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!560) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!560)
                                  ((_ to_fp 11 53) b_ack!559)))
                  ((_ to_fp 11 53) #x3f20000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!560)
                                   ((_ to_fp 11 53) b_ack!559)))
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
                                   ((_ to_fp 11 53) a_ack!560)
                                   ((_ to_fp 11 53) b_ack!559)))
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
                                   ((_ to_fp 11 53) a_ack!560)
                                   ((_ to_fp 11 53) b_ack!559)))
                   ((_ to_fp 11 53) #x3fe921fb54442d18))))
  (FPCHECK_FMUL_UNDERFLOW (CF_floor a!1) #x3e64442d00000000)))

(check-sat)
(exit)
