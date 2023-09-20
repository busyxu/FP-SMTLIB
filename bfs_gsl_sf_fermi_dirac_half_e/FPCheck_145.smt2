(declare-fun a_ack!197 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fd5555555555555
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!197)
          ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
