(declare-fun a_ack!55 () (_ BitVec 64))
(declare-fun b_ack!54 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.geq ((_ to_fp 11 53) a_ack!55) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!55) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!55) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!54)) ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4034000000000000)
                       ((_ to_fp 11 53) b_ack!54))
               ((_ to_fp 11 53) #x4034000000000000))
       ((_ to_fp 11 53) b_ack!54)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4034000000000000)
                       ((_ to_fp 11 53) b_ack!54))
               ((_ to_fp 11 53) b_ack!54))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x40335d6b2ed19148)
               ((_ to_fp 11 53) a_ack!55))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW b_ack!54 #x3fa8d5ed070ef27d))

(check-sat)
(exit)
