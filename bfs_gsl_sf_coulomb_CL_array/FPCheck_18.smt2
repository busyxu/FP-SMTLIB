(declare-fun a_ack!67 () (_ BitVec 64))
(declare-fun c_ack!66 () (_ BitVec 64))
(declare-fun b_ack!65 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!67) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!67)) ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!66)) ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (bvsle #x00000001 b_ack!65))
(assert (FPCHECK_FADD_OVERFLOW a_ack!67 #x3ff0000000000000))

(check-sat)
(exit)
