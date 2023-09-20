(declare-fun x1_ack!211 () (_ BitVec 64))
(declare-fun x2_ack!210 () (_ BitVec 64))
(declare-fun y1_ack!209 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!211) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!210) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!210) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!211))
             (fp.abs ((_ to_fp 11 53) y1_ack!209)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) x1_ack!211))
  (fp.abs ((_ to_fp 11 53) y1_ack!209))))

(check-sat)
(exit)
