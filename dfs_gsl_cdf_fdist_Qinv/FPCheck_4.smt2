(declare-fun x_ack!22 () (_ BitVec 64))
(declare-fun nu1_ack!20 () (_ BitVec 64))
(declare-fun nu2_ack!21 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!22) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!22) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!20) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!21) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!22) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW nu1_ack!20 #x4000000000000000))

(check-sat)
(exit)
