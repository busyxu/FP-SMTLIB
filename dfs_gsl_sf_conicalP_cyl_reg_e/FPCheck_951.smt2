(declare-fun c_ack!4918 () (_ BitVec 64))
(declare-fun a_ack!4919 () (_ BitVec 32))
(declare-fun b_ack!4917 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!4919 #xffffffff)))
(assert (not (= #xffffffff a_ack!4919)))
(assert (= #x00000000 a_ack!4919))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4917) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4917) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4917) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4917) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4918) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4917) ((_ to_fp 11 53) #x4034000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 c_ack!4918))

(check-sat)
(exit)
