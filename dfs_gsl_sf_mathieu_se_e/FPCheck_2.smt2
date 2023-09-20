(declare-fun n_ack!14 () (_ BitVec 32))
(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z_ack!13 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!14 #x00000002)))
(assert (not (= #x00000000 n_ack!14)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!14)
  z_ack!13))

(check-sat)
(exit)
