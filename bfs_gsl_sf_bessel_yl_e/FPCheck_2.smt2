(declare-fun a_ack!10 () (_ BitVec 32))
(declare-fun b_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!10 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!9) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!10))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!9) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!9) ((_ to_fp 11 53) #x0004000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!9))
            ((_ to_fp 11 53) #x3f20000000000000))))
(assert (FPCHECK_FDIV_ACCURACY (fp.abs ((_ to_fp 11 53) b_ack!9)) #x3fe921fb54442d18))

(check-sat)
(exit)
