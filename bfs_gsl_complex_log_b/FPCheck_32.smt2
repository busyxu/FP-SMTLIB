(declare-fun y1_ack!172 () (_ BitVec 64))
(declare-fun x1_ack!175 () (_ BitVec 64))
(declare-fun y2_ack!174 () (_ BitVec 64))
(declare-fun x2_ack!173 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!175))
             (fp.abs ((_ to_fp 11 53) y1_ack!172)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!175) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!173))
             (fp.abs ((_ to_fp 11 53) y2_ack!174)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) x2_ack!173))
  (fp.abs ((_ to_fp 11 53) y2_ack!174))))

(check-sat)
(exit)
