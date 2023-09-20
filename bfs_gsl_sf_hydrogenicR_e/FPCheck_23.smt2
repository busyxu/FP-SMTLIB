(declare-fun a_ack!197 () (_ BitVec 32))
(declare-fun b_ack!194 () (_ BitVec 32))
(declare-fun c_ack!195 () (_ BitVec 64))
(declare-fun d_ack!196 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!197 #x00000001)))
(assert (not (bvslt (bvadd #xffffffff a_ack!197) b_ack!194)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!195) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!197)))

(check-sat)
(exit)
