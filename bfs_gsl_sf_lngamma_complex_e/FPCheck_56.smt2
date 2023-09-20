(declare-fun a_ack!165 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!164 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!165) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!165)
                       ((_ to_fp 11 53) #x3ff0000000000000))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) a_ack!165)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!165)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!165)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!165)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FDIV_UNDERFLOW
    #x40852429b6c30b05
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!1)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!164)
                    ((_ to_fp 11 53) b_ack!164))))))

(check-sat)
(exit)
