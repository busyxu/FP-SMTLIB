(declare-fun x1_ack!223 () (_ BitVec 64))
(declare-fun x2_ack!222 () (_ BitVec 64))
(declare-fun y1_ack!221 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!222) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!222) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!223))
             (fp.abs ((_ to_fp 11 53) y1_ack!221)))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) x1_ack!223))
  (fp.abs ((_ to_fp 11 53) y1_ack!221))))

(check-sat)
(exit)
