(declare-fun x1_ack!226 () (_ BitVec 64))
(declare-fun x2_ack!225 () (_ BitVec 64))
(declare-fun y1_ack!224 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!225) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!225) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!226))
             (fp.abs ((_ to_fp 11 53) y1_ack!224)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.abs ((_ to_fp 11 53) x1_ack!226))
  (fp.abs ((_ to_fp 11 53) y1_ack!224))))

(check-sat)
(exit)
