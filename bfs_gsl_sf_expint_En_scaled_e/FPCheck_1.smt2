(declare-fun a_ack!5 () (_ BitVec 32))
(declare-fun b_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!5 #x00000000)))
(assert (not (= #x00000000 a_ack!5)))
(assert (not (= #x00000001 a_ack!5)))
(assert (not (= #x00000002 a_ack!5)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!4) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5)
  #x3ff0000000000000))

(check-sat)
(exit)
