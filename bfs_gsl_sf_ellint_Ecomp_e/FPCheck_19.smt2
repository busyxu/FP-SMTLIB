(declare-fun a_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!36)
                     ((_ to_fp 11 53) a_ack!36))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!36)
                ((_ to_fp 11 53) a_ack!36))
        ((_ to_fp 11 53) #x3feffffff8000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fa85b9906e45829
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!36)
                  ((_ to_fp 11 53) a_ack!36)))))

(check-sat)
(exit)
