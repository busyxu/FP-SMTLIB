(declare-fun x1_ack!750 () (_ BitVec 64))
(declare-fun x2_ack!748 () (_ BitVec 64))
(declare-fun y2_ack!749 () (_ BitVec 64))
(declare-fun y1_ack!747 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!750) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!748) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!749) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!748) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!750))
        (fp.abs ((_ to_fp 11 53) y1_ack!747))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) y1_ack!747))
  (fp.abs ((_ to_fp 11 53) x1_ack!750))))

(check-sat)
(exit)
