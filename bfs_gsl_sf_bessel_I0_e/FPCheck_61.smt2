(declare-fun a_ack!84 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!84))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!84))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!84)) ((_ to_fp 11 53) #x40862642fefa39ef)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!84))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!84))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!84))
             ((_ to_fp 11 53) #x4020000000000000))))
(assert (FPCHECK_FDIV_ACCURACY #x4030000000000000 (fp.abs ((_ to_fp 11 53) a_ack!84))))

(check-sat)
(exit)
