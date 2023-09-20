(declare-fun y1_ack!128 () (_ BitVec 64))
(declare-fun x1_ack!131 () (_ BitVec 64))
(declare-fun y2_ack!130 () (_ BitVec 64))
(declare-fun x2_ack!129 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!131))
             (fp.abs ((_ to_fp 11 53) y1_ack!128)))))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!131) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!128) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!129))
        (fp.abs ((_ to_fp 11 53) y2_ack!130))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) y2_ack!130))
  (fp.abs ((_ to_fp 11 53) x2_ack!129))))

(check-sat)
(exit)
