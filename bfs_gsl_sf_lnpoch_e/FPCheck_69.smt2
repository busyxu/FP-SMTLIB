(declare-fun a_ack!207 () (_ BitVec 64))
(declare-fun b_ack!206 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!207) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!207)
                     ((_ to_fp 11 53) b_ack!206))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!206) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!206))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!207)))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!207) ((_ to_fp 11 53) #x4000000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!206))
                          ((_ to_fp 11 53) #x3fe62e42fefa39ef))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!206))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!207)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!206) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!207) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!207) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!207)
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!206)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FMUL_ACCURACY b_ack!206 (CF_log a!1))))

(check-sat)
(exit)
