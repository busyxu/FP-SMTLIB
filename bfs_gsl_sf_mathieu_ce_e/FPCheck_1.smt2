(declare-fun n_ack!7 () (_ BitVec 32))
(declare-fun a_ack!8 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z_ack!6 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!7 #x00000002)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!8) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 n_ack!7))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven n_ack!7)
  z_ack!6))

(check-sat)
(exit)
