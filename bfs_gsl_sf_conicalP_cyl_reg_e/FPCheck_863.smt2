(declare-fun c_ack!3660 () (_ BitVec 64))
(declare-fun a_ack!3661 () (_ BitVec 32))
(declare-fun b_ack!3659 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3660) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!3661 #xffffffff)))
(assert (not (= #xffffffff a_ack!3661)))
(assert (= #x00000000 a_ack!3661))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3660) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3660) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3659) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3660) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!3660) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3659) ((_ to_fp 11 53) #x4031000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW c_ack!3660 c_ack!3660))

(check-sat)
(exit)
