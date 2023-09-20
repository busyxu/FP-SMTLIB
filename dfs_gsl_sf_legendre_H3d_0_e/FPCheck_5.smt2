(declare-fun b_ack!21 () (_ BitVec 64))
(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!21) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!22)
                  ((_ to_fp 11 53) b_ack!21)))))

(check-sat)
(exit)
