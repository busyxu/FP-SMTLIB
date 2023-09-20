(declare-fun a_ack!10 () (_ BitVec 32))
(declare-fun b_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!10 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!9) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ed965fea53d6e41
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!10)))

(check-sat)
(exit)
