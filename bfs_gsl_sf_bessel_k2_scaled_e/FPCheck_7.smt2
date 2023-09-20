(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x2aa965fea53d6e98))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!15))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) a_ack!15)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!15))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) a_ack!15))
               ((_ to_fp 11 53) a_ack!15))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW #x4008000000000000 a_ack!15))

(check-sat)
(exit)
