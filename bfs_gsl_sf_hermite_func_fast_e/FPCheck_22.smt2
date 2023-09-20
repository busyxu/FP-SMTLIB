(declare-fun a_ack!91 () (_ BitVec 32))
(declare-fun b_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!91 #x000003e8)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!90) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!91)))

(check-sat)
(exit)
