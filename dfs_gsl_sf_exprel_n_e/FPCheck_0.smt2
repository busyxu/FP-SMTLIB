(declare-fun a_ack!3 () (_ BitVec 32))
(declare-fun b_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!3 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3ed965fea53d6e41
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!3)))

(check-sat)
(exit)
