(declare-fun a_ack!70 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!70) ((_ to_fp 11 53) #x41dfffffff800000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!70) ((_ to_fp 11 53) #xc1dfffffffc00000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!70) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!70) ((_ to_fp 11 53) #xc086232bdd7abcd2)))
(assert (FPCHECK_FADD_UNDERFLOW (fp.abs ((_ to_fp 11 53) a_ack!70)) #x3ff0000000000000))

(check-sat)
(exit)
