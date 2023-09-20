(declare-fun x1_ack!730 () (_ BitVec 64))
(declare-fun x2_ack!728 () (_ BitVec 64))
(declare-fun y2_ack!729 () (_ BitVec 64))
(declare-fun y1_ack!727 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!730) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) x2_ack!728) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y2_ack!729) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!728) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!730))
        (fp.abs ((_ to_fp 11 53) y1_ack!727))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) y1_ack!727))
  (fp.abs ((_ to_fp 11 53) x1_ack!730))))

(check-sat)
(exit)
