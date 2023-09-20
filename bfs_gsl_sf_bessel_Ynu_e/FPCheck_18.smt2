(declare-fun b_ack!47 () (_ BitVec 64))
(declare-fun a_ack!48 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!47) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!48) ((_ to_fp 11 53) #x4049000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!47) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             ((_ fp.to_sbv 32)
               roundTowardZero
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!48)
                       ((_ to_fp 11 53) #x3fe0000000000000))))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x400921fb54442d18)
            (fp.sub roundNearestTiesToEven ((_ to_fp 11 53) a_ack!48) a!1))
    #x4000000000000000)))

(check-sat)
(exit)
