(declare-fun b_ack!46 () (_ BitVec 64))
(declare-fun a_ack!47 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!46) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!47) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!46) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!46) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) b_ack!46))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  #x4000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x400921fb54442d18)
          (CF_sin (CF_acos b_ack!46)))))

(check-sat)
(exit)
