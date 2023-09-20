(declare-fun x1_ack!9 () (_ BitVec 64))
(declare-fun x2_ack!8 () (_ BitVec 64))
(declare-fun y1_ack!7 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!9) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!8) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!8) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!9)) (fp.abs ((_ to_fp 11 53) y1_ack!7))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) y1_ack!7))
  (fp.abs ((_ to_fp 11 53) x1_ack!9))))

(check-sat)
(exit)
