(declare-fun q_ack!50 () (_ BitVec 64))
(declare-fun j_ack!52 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun x_ack!51 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) q_ack!50) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt j_ack!52 #x00000001)))
(assert (not (bvslt #x00000002 j_ack!52)))
(assert (FPCHECK_FMUL_UNDERFLOW #x7ff8000010000000 (CF_exp x_ack!51)))

(check-sat)
(exit)
