(declare-fun x_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!6) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 (CF_log x_ack!6)))

(check-sat)
(exit)
