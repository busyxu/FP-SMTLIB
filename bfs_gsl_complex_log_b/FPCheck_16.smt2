(declare-fun y1_ack!66 () (_ BitVec 64))
(declare-fun x1_ack!69 () (_ BitVec 64))
(declare-fun y2_ack!68 () (_ BitVec 64))
(declare-fun x2_ack!67 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!69))
             (fp.abs ((_ to_fp 11 53) y1_ack!66)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!69) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!67))
        (fp.abs ((_ to_fp 11 53) y2_ack!68))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) y2_ack!68))
  (fp.abs ((_ to_fp 11 53) x2_ack!67))))

(check-sat)
(exit)
