(declare-fun a_ack!142 () (_ BitVec 64))
(declare-fun b_ack!141 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!141) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) b_ack!141))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!142) ((_ to_fp 11 53) b_ack!141)))
(assert (FPCHECK_FDIV_INVALID a_ack!142 b_ack!141))

(check-sat)
(exit)
