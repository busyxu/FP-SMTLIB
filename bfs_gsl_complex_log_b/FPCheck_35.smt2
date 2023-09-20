(declare-fun y1_ack!192 () (_ BitVec 64))
(declare-fun x1_ack!195 () (_ BitVec 64))
(declare-fun y2_ack!194 () (_ BitVec 64))
(declare-fun x2_ack!193 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!195))
             (fp.abs ((_ to_fp 11 53) y1_ack!192)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!195) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!193))
             (fp.abs ((_ to_fp 11 53) y2_ack!194)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) x2_ack!193))
  (fp.abs ((_ to_fp 11 53) y2_ack!194))))

(check-sat)
(exit)
