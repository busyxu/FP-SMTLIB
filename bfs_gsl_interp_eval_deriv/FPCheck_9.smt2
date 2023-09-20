(declare-fun x1_ack!69 () (_ BitVec 64))
(declare-fun x0_ack!73 () (_ BitVec 64))
(declare-fun x2_ack!70 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!71 () (_ BitVec 64))
(declare-fun y2_ack!72 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!73) ((_ to_fp 11 53) x1_ack!69)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!69) ((_ to_fp 11 53) x2_ack!70)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!69)
                       ((_ to_fp 11 53) x0_ack!73))
               ((_ to_fp 11 53) x0_ack!73))
       ((_ to_fp 11 53) x1_ack!69)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!69)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!69)
                       ((_ to_fp 11 53) x0_ack!73)))
       ((_ to_fp 11 53) x0_ack!73)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!70)
                       ((_ to_fp 11 53) x1_ack!69))
               ((_ to_fp 11 53) x1_ack!69))
       ((_ to_fp 11 53) x2_ack!70)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!70)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!70)
                       ((_ to_fp 11 53) x1_ack!69)))
       ((_ to_fp 11 53) x1_ack!69)))
(assert (FPCHECK_FSUB_OVERFLOW y2_ack!72 y1_ack!71))

(check-sat)
(exit)
