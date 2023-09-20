(declare-fun x1_ack!952 () (_ BitVec 64))
(declare-fun x0_ack!956 () (_ BitVec 64))
(declare-fun x2_ack!953 () (_ BitVec 64))
(declare-fun b_ack!955 () (_ BitVec 64))
(declare-fun a_ack!954 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!956) ((_ to_fp 11 53) x1_ack!952)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!952) ((_ to_fp 11 53) x2_ack!953)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!952)
                       ((_ to_fp 11 53) x0_ack!956))
               ((_ to_fp 11 53) x0_ack!956))
       ((_ to_fp 11 53) x1_ack!952)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!952)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!952)
                       ((_ to_fp 11 53) x0_ack!956)))
       ((_ to_fp 11 53) x0_ack!956)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!953)
                       ((_ to_fp 11 53) x1_ack!952))
               ((_ to_fp 11 53) x1_ack!952))
       ((_ to_fp 11 53) x2_ack!953)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!953)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!953)
                       ((_ to_fp 11 53) x1_ack!952)))
       ((_ to_fp 11 53) x1_ack!952)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!952)
                    ((_ to_fp 11 53) x0_ack!956))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!953)
                    ((_ to_fp 11 53) x1_ack!952))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!954) ((_ to_fp 11 53) b_ack!955))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!954) ((_ to_fp 11 53) x0_ack!956))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!955) ((_ to_fp 11 53) x2_ack!953))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!954) ((_ to_fp 11 53) b_ack!955))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!954) ((_ to_fp 11 53) x0_ack!956))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!954) ((_ to_fp 11 53) x1_ack!952))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!955) ((_ to_fp 11 53) x0_ack!956)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!952)
                    ((_ to_fp 11 53) x0_ack!956))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY b_ack!955 x0_ack!956))

(check-sat)
(exit)
