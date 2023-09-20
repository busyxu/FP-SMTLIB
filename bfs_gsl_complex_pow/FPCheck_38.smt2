(declare-fun x1_ack!217 () (_ BitVec 64))
(declare-fun x2_ack!216 () (_ BitVec 64))
(declare-fun y1_ack!215 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!216) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!216) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!217))
             (fp.abs ((_ to_fp 11 53) y1_ack!215)))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.abs ((_ to_fp 11 53) x1_ack!217))
  (fp.abs ((_ to_fp 11 53) y1_ack!215))))

(check-sat)
(exit)
