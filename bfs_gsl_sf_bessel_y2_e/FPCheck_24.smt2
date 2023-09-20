(declare-fun a_ack!49 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!49) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!49) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!49))
            ((_ to_fp 11 53) #x3f20000000000000))))
(assert (fp.leq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!49)))
        ((_ to_fp 11 53) #x7fe921fb54442d17)))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) a_ack!49))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
(let ((a!2 (bvand ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x7fdfffffffffffff)))
                  #x00000001)))
  (= #x00000000 a!2))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) a_ack!49))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
(let ((a!2 (bvslt #x00000003
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x7fdfffffffffffff))))))
  (not a!2))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) a_ack!49))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
(let ((a!2 (bvslt #x00000001
                  ((_ fp.to_sbv 32)
                    roundTowardZero
                    (fp.sub roundNearestTiesToEven
                            a!1
                            ((_ to_fp 11 53) #x7fdfffffffffffff))))))
  (not a!2))))
(assert (let ((a!1 (CF_floor (fp.div roundNearestTiesToEven
                             (fp.abs ((_ to_fp 11 53) a_ack!49))
                             ((_ to_fp 11 53) #x3fe921fb54442d18)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.abs ((_ to_fp 11 53) a_ack!49))
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3fe921fb40000000)))
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x3e64442d00000000)))))

(check-sat)
(exit)
