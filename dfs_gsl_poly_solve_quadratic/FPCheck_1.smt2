(declare-fun a_ack!7 () (_ BitVec 64))
(declare-fun b_ack!5 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun c_ack!6 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!7) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!5) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 c_ack!6))

(check-sat)
(exit)
