(declare-fun a_ack!43 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!42 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!43) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) a_ack!43))
  b_ack!42))

(check-sat)
(exit)
