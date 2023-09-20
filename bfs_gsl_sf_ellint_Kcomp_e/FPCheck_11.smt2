(declare-fun a_ack!22 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!22)
                     ((_ to_fp 11 53) a_ack!22))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!22)
                     ((_ to_fp 11 53) a_ack!22))
             ((_ to_fp 11 53) #x3feffffff8000000))))
(assert (FPCHECK_FSUB_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!22)
          ((_ to_fp 11 53) a_ack!22))))

(check-sat)
(exit)
