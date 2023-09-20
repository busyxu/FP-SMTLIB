(declare-fun a_ack!96 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!96))
            ((_ to_fp 11 53) #x3fe999999999999a))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!96)) ((_ to_fp 11 53) #x4059000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW #x400921fb54442d18 (fp.abs ((_ to_fp 11 53) a_ack!96))))

(check-sat)
(exit)
