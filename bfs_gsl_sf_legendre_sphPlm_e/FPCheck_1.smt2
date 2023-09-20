(declare-fun b_ack!3 () (_ BitVec 32))
(declare-fun a_ack!5 () (_ BitVec 32))
(declare-fun c_ack!4 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!3 #x00000000)))
(assert (not (bvslt a_ack!5 b_ack!3)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!4) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!3))
(assert (not (bvslt a_ack!5 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!4) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!4) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 a_ack!5))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4000000000000000
  ((_ to_fp 11 53) roundNearestTiesToEven a_ack!5)))

(check-sat)
(exit)
