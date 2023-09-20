(declare-fun a_ack!468 () (_ BitVec 64))
(declare-fun b_ack!467 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) b_ack!467))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!468) ((_ to_fp 11 53) b_ack!467)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!468)
                    ((_ to_fp 11 53) b_ack!467))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!468)
                       ((_ to_fp 11 53) b_ack!467))
               ((_ to_fp 11 53) a_ack!468))
       ((_ to_fp 11 53) b_ack!467)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!468)
                       ((_ to_fp 11 53) b_ack!467))
               ((_ to_fp 11 53) b_ack!467))
       ((_ to_fp 11 53) a_ack!468)))
(assert (FPCHECK_FSUB_ACCURACY a_ack!468 #x3ff0000000000000))

(check-sat)
(exit)
