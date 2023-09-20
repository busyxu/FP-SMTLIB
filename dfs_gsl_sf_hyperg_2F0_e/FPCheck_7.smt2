(declare-fun c_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun a_ack!19 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) c_ack!18) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY #x3ff0000000000000 a_ack!19))

(check-sat)
(exit)
