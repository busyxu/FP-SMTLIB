(declare-fun a_ack!511 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!511))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!511))
  a_ack!511))

(check-sat)
(exit)
