(declare-fun a_ack!430 () (_ BitVec 32))
(declare-fun b_ack!429 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!430 #x00000000)))
(assert (not (bvslt b_ack!429 #x00000000)))
(assert (not (= #x00000000 a_ack!430)))
(assert (not (= #x00000001 a_ack!430)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!429 a_ack!430)) #x00000001)))
(assert (bvsle (bvadd #x00000001 (bvsub b_ack!429 a_ack!430)) b_ack!429))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvsub b_ack!429 a_ack!430)))))

(check-sat)
(exit)
