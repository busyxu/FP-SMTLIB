(declare-fun a_ack!398 () (_ BitVec 64))
(declare-fun b_ack!397 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!398) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!397) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!397) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!397) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!397)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fe0000000000000)
                    ((_ to_fp 11 53) a_ack!398)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!398) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!397)
                       ((_ to_fp 11 53) a_ack!398))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!397)
                       ((_ to_fp 11 53) a_ack!398)))
       ((_ to_fp 11 53) a_ack!398)))
(assert (FPCHECK_FSUB_ACCURACY b_ack!397 a_ack!398))

(check-sat)
(exit)
