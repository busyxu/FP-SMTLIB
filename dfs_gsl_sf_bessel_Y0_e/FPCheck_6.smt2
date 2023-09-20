(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!11)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!11))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!11)
                       ((_ to_fp 11 53) a_ack!11))
               ((_ to_fp 11 53) a_ack!11))
       ((_ to_fp 11 53) a_ack!11)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!11))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!11)
                       ((_ to_fp 11 53) a_ack!11))
               ((_ to_fp 11 53) a_ack!11))
       ((_ to_fp 11 53) a_ack!11)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!11)
                  ((_ to_fp 11 53) a_ack!11)))))

(check-sat)
(exit)
