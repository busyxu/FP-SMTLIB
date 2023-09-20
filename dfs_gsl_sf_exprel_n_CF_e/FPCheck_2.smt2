(declare-fun a_ack!9 () (_ BitVec 64))
(declare-fun b_ack!8 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!9))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!8) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ed965fea53d6e41
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!9)))))

(check-sat)
(exit)
