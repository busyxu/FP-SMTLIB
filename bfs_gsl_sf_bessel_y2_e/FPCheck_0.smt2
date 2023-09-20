(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2))
            ((_ to_fp 11 53) #x3f20000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW (fp.abs ((_ to_fp 11 53) a_ack!2)) #x3fe921fb54442d18))

(check-sat)
(exit)
