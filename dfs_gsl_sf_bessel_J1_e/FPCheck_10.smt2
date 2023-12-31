(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20)) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!20)
          ((_ to_fp 11 53) a_ack!20))
  #xbe38d48ed61d7aab))

(check-sat)
(exit)
