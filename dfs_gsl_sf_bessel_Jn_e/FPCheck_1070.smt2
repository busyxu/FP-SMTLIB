(declare-fun a_ack!3169 () (_ BitVec 32))
(declare-fun b_ack!3168 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!3169 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!3169))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!3168))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!3168))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (FPCHECK_FSUB_ACCURACY
  (CF_sin (fp.abs ((_ to_fp 11 53) b_ack!3168)))
  (CF_cos (fp.abs ((_ to_fp 11 53) b_ack!3168)))))

(check-sat)
(exit)
