(declare-fun a_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!11) ((_ to_fp 11 53) #x4039000000000000))))
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
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!11)
          ((_ to_fp 11 53) a_ack!11))))

(check-sat)
(exit)
