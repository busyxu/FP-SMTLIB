(declare-fun a_ack!54 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!54))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!54))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!54))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FDIV_ZERO
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!54)))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!54)))))

(check-sat)
(exit)
