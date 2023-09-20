(declare-fun a_ack!197 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!197) ((_ to_fp 11 53) #x4039000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!197))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!197)
                       ((_ to_fp 11 53) a_ack!197))
               ((_ to_fp 11 53) a_ack!197))
       ((_ to_fp 11 53) a_ack!197)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!197))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!197)
                       ((_ to_fp 11 53) a_ack!197))
               ((_ to_fp 11 53) a_ack!197))
       ((_ to_fp 11 53) a_ack!197)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!197)
          ((_ to_fp 11 53) a_ack!197))))

(check-sat)
(exit)
