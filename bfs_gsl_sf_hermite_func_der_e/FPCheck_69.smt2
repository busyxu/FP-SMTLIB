(declare-fun a_ack!428 () (_ BitVec 32))
(declare-fun b_ack!427 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!428 #x00000000)))
(assert (not (bvslt b_ack!427 #x00000000)))
(assert (not (= #x00000000 a_ack!428)))
(assert (not (= #x00000001 a_ack!428)))
(assert (not (bvslt (bvadd #x00000001 (bvsub b_ack!427 a_ack!428)) #x00000001)))
(assert (bvsle (bvadd #x00000001 (bvsub b_ack!427 a_ack!428)) b_ack!427))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4000000000000000
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvadd #x00000001 (bvsub b_ack!427 a_ack!428)))))

(check-sat)
(exit)
