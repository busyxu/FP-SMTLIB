(declare-fun a_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!37) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (FPCHECK_FDIV_ACCURACY #x3ff0000000000000 a_ack!37))

(check-sat)
(exit)
