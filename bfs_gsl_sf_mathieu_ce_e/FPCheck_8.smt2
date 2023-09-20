(declare-fun n_ack!50 () (_ BitVec 32))
(declare-fun a_ack!51 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z_ack!49 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!50 #x00000002))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!51) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!50)))
(assert (FPCHECK_FMUL_ACCURACY
  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!50)
  z_ack!49))

(check-sat)
(exit)
