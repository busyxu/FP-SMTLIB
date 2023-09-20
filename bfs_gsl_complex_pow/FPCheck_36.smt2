(declare-fun x1_ack!205 () (_ BitVec 64))
(declare-fun x2_ack!204 () (_ BitVec 64))
(declare-fun y1_ack!203 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!205) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!204) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!204) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!205))
             (fp.abs ((_ to_fp 11 53) y1_ack!203)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.abs ((_ to_fp 11 53) x1_ack!205))
  (fp.abs ((_ to_fp 11 53) y1_ack!203))))

(check-sat)
(exit)
