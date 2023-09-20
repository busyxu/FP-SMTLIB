(declare-fun y1_ack!118 () (_ BitVec 64))
(declare-fun x1_ack!119 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!119))
        (fp.abs ((_ to_fp 11 53) y1_ack!118))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y1_ack!118))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x1_ack!119))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!119)))
  #x3fd62e42fefa39ef))

(check-sat)
(exit)
