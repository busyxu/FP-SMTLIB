(declare-fun a_ack!2338 () (_ BitVec 64))
(declare-fun b_ack!2335 () (_ BitVec 64))
(declare-fun c_ack!2336 () (_ BitVec 64))
(declare-fun d_ack!2337 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2338) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2335) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2336) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) d_ack!2337)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3d4f400000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!2337) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) #x3ff0000000000000) ((_ to_fp 11 53) d_ack!2337))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2336)
                       ((_ to_fp 11 53) b_ack!2335)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!2337))
            ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2336)
                                   ((_ to_fp 11 53) a_ack!2338))
                           ((_ to_fp 11 53) b_ack!2335))
                   (CF_log (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) d_ack!2337))))))
  (FPCHECK_FMUL_ACCURACY #x3cb0000000000000 (fp.abs a!1))))

(check-sat)
(exit)
