(declare-fun n_ack!38 () (_ BitVec 32))
(declare-fun a_ack!39 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z_ack!37 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!38 #x00000002))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!39) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!38)))
(assert (FPCHECK_FMUL_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!38)
  z_ack!37))

(check-sat)
(exit)
