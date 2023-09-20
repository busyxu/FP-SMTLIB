(declare-fun x1_ack!153 () (_ BitVec 64))
(declare-fun x2_ack!152 () (_ BitVec 64))
(declare-fun y1_ack!151 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!153) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!152) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!152) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!153))
        (fp.abs ((_ to_fp 11 53) y1_ack!151))))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!153)))
  #x0000000000000000))

(check-sat)
(exit)
