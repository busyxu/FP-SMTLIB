(declare-fun xx_ack!42 () (_ BitVec 64))
(declare-fun x0_ack!43 () (_ BitVec 64))
(declare-fun x1_ack!40 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun x2_ack!41 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!42) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!42) ((_ to_fp 11 53) #xabababababababab))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!42) ((_ to_fp 11 53) x0_ack!43))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!42) ((_ to_fp 11 53) x1_ack!40)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!40) ((_ to_fp 11 53) xx_ack!42))))
(assert (FPCHECK_FSUB_OVERFLOW x2_ack!41 x1_ack!40))

(check-sat)
(exit)
