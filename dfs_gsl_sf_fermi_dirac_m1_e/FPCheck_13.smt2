(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!18) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY (fp.abs ((_ to_fp 11 53) a_ack!18)) #x3ff0000000000000))

(check-sat)
(exit)
