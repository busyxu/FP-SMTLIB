(declare-fun b_ack!91 () (_ BitVec 64))
(declare-fun a_ack!92 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) b_ack!91) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!92) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xc00921fb54442d18)
                  (CF_log a_ack!92)))))

(check-sat)
(exit)
