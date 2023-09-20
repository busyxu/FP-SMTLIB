(declare-fun a_ack!3184 () (_ BitVec 32))
(declare-fun b_ack!3183 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!3184 #x00000000)))
(assert (not (bvslt b_ack!3183 #x00000000)))
(assert (not (= #x00000000 a_ack!3184)))
(assert (= #x00000001 a_ack!3184))
(assert (not (bvsle #x00000002 b_ack!3183)))
(assert (FPCHECK_FMUL_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven b_ack!3183)
  #x3cb0000000000000))

(check-sat)
(exit)
