(declare-fun a_ack!17 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!17) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!17) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY a_ack!17 #x3ff0000000000000))

(check-sat)
(exit)
