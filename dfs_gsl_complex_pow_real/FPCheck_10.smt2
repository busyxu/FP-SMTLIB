(declare-fun x1_ack!28 () (_ BitVec 64))
(declare-fun y1_ack!27 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.eq ((_ to_fp 11 53) x1_ack!28) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) y1_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!28))
             (fp.abs ((_ to_fp 11 53) y1_ack!27)))))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!27)))
  #x7ff0000000000001))

(check-sat)
(exit)
