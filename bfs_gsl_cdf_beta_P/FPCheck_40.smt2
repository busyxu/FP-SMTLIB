(declare-fun x_ack!164 () (_ BitVec 64))
(declare-fun nu1_ack!162 () (_ BitVec 64))
(declare-fun nu2_ack!163 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!164) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!164) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!164) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!164) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!162) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!163) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!162) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW nu1_ack!162 nu2_ack!163))

(check-sat)
(exit)
