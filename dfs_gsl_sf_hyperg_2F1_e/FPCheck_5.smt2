(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!19 () (_ BitVec 64))
(declare-fun a_ack!21 () (_ BitVec 64))
(declare-fun c_ack!20 () (_ BitVec 64))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!20)
          ((_ to_fp 11 53) a_ack!21))
  b_ack!19))

(check-sat)
(exit)
