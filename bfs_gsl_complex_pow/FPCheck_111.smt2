(declare-fun x1_ack!746 () (_ BitVec 64))
(declare-fun x2_ack!744 () (_ BitVec 64))
(declare-fun y2_ack!745 () (_ BitVec 64))
(declare-fun y1_ack!743 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!746) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!744) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!745) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!744) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!746))
        (fp.abs ((_ to_fp 11 53) y1_ack!743))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) y1_ack!743))
  (fp.abs ((_ to_fp 11 53) x1_ack!746))))

(check-sat)
(exit)
