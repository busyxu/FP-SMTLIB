(declare-fun y1_ack!842 () (_ BitVec 64))
(declare-fun x1_ack!845 () (_ BitVec 64))
(declare-fun y2_ack!844 () (_ BitVec 64))
(declare-fun x2_ack!843 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!845))
             (fp.abs ((_ to_fp 11 53) y1_ack!842)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!845) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!843))
        (fp.abs ((_ to_fp 11 53) y2_ack!844))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) y2_ack!844))
  (fp.abs ((_ to_fp 11 53) x2_ack!843))))

(check-sat)
(exit)
