(declare-fun x1_ack!89 () (_ BitVec 64))
(declare-fun x0_ack!93 () (_ BitVec 64))
(declare-fun x2_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!91 () (_ BitVec 64))
(declare-fun y2_ack!92 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!93) ((_ to_fp 11 53) x1_ack!89)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!89) ((_ to_fp 11 53) x2_ack!90)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!89)
                       ((_ to_fp 11 53) x0_ack!93))
               ((_ to_fp 11 53) x0_ack!93))
       ((_ to_fp 11 53) x1_ack!89)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!89)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!89)
                       ((_ to_fp 11 53) x0_ack!93)))
       ((_ to_fp 11 53) x0_ack!93)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!90)
                       ((_ to_fp 11 53) x1_ack!89))
               ((_ to_fp 11 53) x1_ack!89))
       ((_ to_fp 11 53) x2_ack!90)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!90)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!90)
                       ((_ to_fp 11 53) x1_ack!89)))
       ((_ to_fp 11 53) x1_ack!89)))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!92 y1_ack!91))

(check-sat)
(exit)
