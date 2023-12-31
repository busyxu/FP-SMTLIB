(declare-fun x1_ack!10 () (_ BitVec 64))
(declare-fun y1_ack!9 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) x1_ack!10) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!9) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!10))
             (fp.abs ((_ to_fp 11 53) y1_ack!9)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) x1_ack!10))
  (fp.abs ((_ to_fp 11 53) y1_ack!9))))

(check-sat)
(exit)
