(declare-fun c_ack!192 () (_ BitVec 64))
(declare-fun b_ack!191 () (_ BitVec 32))
(declare-fun FPCHECK_FINVALID_LOG ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvsle #x00000001 b_ack!191)))
(assert (FPCHECK_FINVALID_LOG c_ack!192 c_ack!192))

(check-sat)
(exit)
