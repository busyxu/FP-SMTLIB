(declare-fun c_ack!196 () (_ BitVec 64))
(declare-fun a_ack!197 () (_ BitVec 32))
(declare-fun b_ack!195 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!196) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!197 #xffffffff)))
(assert (not (= #xffffffff a_ack!197)))
(assert (= #x00000000 a_ack!197))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!196) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!196) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!195) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!196) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!195) ((_ to_fp 11 53) #x408f400000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x3fe0000000000000 b_ack!195))

(check-sat)
(exit)
