(declare-fun c_ack!4 () (_ BitVec 64))
(declare-fun a_ack!5 () (_ BitVec 32))
(declare-fun b_ack!3 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!4))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!3 a_ack!5)))
(assert (not (bvslt a_ack!5 #x00000000)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!4) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 (bvsub b_ack!3 a_ack!5)))
(assert (not (bvsle #x00000001 (bvsub b_ack!3 a_ack!5))))
(assert (= #x00000000 a_ack!5))
(assert (bvsle #x00000000 (bvsub b_ack!3 a_ack!5)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (CF_exp (fp.abs ((_ to_fp 11 53) c_ack!4)))))

(check-sat)
(exit)
