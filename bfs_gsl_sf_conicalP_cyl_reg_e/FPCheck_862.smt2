(declare-fun c_ack!3657 () (_ BitVec 64))
(declare-fun a_ack!3658 () (_ BitVec 32))
(declare-fun b_ack!3656 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3657) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!3658 #xffffffff)))
(assert (not (= #xffffffff a_ack!3658)))
(assert (= #x00000000 a_ack!3658))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3657) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3657) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3656) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3657) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!3657) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3656) ((_ to_fp 11 53) #x4031000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW c_ack!3657 c_ack!3657))

(check-sat)
(exit)
