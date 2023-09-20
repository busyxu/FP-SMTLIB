(declare-fun a_ack!10 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!10) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!10))
            ((_ to_fp 11 53) #x0028000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!10)) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW #x8000000000000000 (fp.abs ((_ to_fp 11 53) a_ack!10))))

(check-sat)
(exit)
