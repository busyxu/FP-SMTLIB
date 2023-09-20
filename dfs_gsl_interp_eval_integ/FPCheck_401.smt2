(declare-fun x1_ack!4940 () (_ BitVec 64))
(declare-fun x0_ack!4944 () (_ BitVec 64))
(declare-fun x2_ack!4941 () (_ BitVec 64))
(declare-fun b_ack!4943 () (_ BitVec 64))
(declare-fun a_ack!4942 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4944) ((_ to_fp 11 53) x1_ack!4940)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4940) ((_ to_fp 11 53) x2_ack!4941)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4940)
                       ((_ to_fp 11 53) x0_ack!4944))
               ((_ to_fp 11 53) x0_ack!4944))
       ((_ to_fp 11 53) x1_ack!4940)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4940)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4940)
                       ((_ to_fp 11 53) x0_ack!4944)))
       ((_ to_fp 11 53) x0_ack!4944)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4941)
                       ((_ to_fp 11 53) x1_ack!4940))
               ((_ to_fp 11 53) x1_ack!4940))
       ((_ to_fp 11 53) x2_ack!4941)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4941)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4941)
                       ((_ to_fp 11 53) x1_ack!4940)))
       ((_ to_fp 11 53) x1_ack!4940)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4940)
                    ((_ to_fp 11 53) x0_ack!4944))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4941)
                    ((_ to_fp 11 53) x1_ack!4940))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4942) ((_ to_fp 11 53) b_ack!4943))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4942) ((_ to_fp 11 53) x0_ack!4944))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4943) ((_ to_fp 11 53) x2_ack!4941))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4942) ((_ to_fp 11 53) b_ack!4943))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4942) ((_ to_fp 11 53) x0_ack!4944))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4942) ((_ to_fp 11 53) x1_ack!4940)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4940) ((_ to_fp 11 53) a_ack!4942))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4943) ((_ to_fp 11 53) x1_ack!4940))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4943) ((_ to_fp 11 53) x2_ack!4941)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4941)
                    ((_ to_fp 11 53) x1_ack!4940))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!4942 x1_ack!4940))

(check-sat)
(exit)
