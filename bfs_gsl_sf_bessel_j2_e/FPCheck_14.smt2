(declare-fun a_ack!33 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!33) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!33))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!33))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (FPCHECK_FMUL_UNDERFLOW #x4008000000000000 (CF_cos a_ack!33)))

(check-sat)
(exit)
