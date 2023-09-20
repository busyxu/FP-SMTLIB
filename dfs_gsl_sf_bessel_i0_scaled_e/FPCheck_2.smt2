(declare-fun a_ack!2 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2)) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 (fp.abs ((_ to_fp 11 53) a_ack!2))))

(check-sat)
(exit)
