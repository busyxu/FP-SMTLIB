(declare-fun a_ack!491 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun b_ack!490 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!491) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!491))
               ((_ to_fp 11 53) a_ack!491))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) a_ack!491)))
       ((_ to_fp 11 53) a_ack!491)))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 b_ack!490))

(check-sat)
(exit)
