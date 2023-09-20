(declare-fun a_ack!16 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!16) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!16))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW a_ack!16 #x3ff0000000000000))

(check-sat)
(exit)
